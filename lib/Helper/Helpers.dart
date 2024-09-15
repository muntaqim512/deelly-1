import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:http/http.dart' as http;

class Helpers {
  static int primaryColor = 0xFF98842F;
  static int SecondryColor = 0xFF224C26;
  static const String base_api = 'https://api.mr-corp.ca/api/';

  static const Map<String, String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/x-www-form-urlencoded"
  };

  static post({
    required String url,
    required Map<String, dynamic> data,
    bool is_protected = false,
  }) async {
    try {
      final response = await http.post(Uri.parse(base_api + url),
          headers: headers, body: data);

      Map<String, dynamic> allData = {
        'body': jsonDecode(response.body),
        'statusCode': response.statusCode,
      };

      return allData;
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      rethrow;
    }
  }

  static validate(
      {String fieldName = '',
      required String value,
      int min = 0,
      int max = 0,
      String match_with = '',
      required bool is_required,
      bool is_email = false}) {
    var field = fieldName.trim().length > 0 ? fieldName : 'this field';
    if (is_required) {
      if (value == "" || value.trim().length == 0) {
        return field + ' is required';
      }
    }
    if (is_email) {
      if (!GetUtils.isEmail(value)) {
        return field + ' must be a valid email';
      }
    }
    if (min != 0) {
      if (value.trim().length < min) {
        return field + ' must be at least ${min} characters';
      }
    }
    if (max != 0) {
      if (value.trim().length > min) {
        return field + ' can have maximum ${max} characters';
      }
    }
    if (match_with.trim().length > 0 && value != match_with) {
      return field + ' does not match';
    }

    return null;
  }
}
