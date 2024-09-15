import 'package:deelly/presentation/Layout/LayoutScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../Helper/Helpers.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> form = GlobalKey();

  var isChecked = false.obs;
  var isLoading = false.obs;
  login({
    required String login,
    required String password,
    required String device_id,
  }) async {
    try {
      isLoading.value = true;

      var data = {
        'email': login,
        'password': password,
        'device_id': device_id,
      };

      final response = await Helpers.post(url: 'login/', data: data);
      print("Response::$response");

      if (response['body']['success'] == true) {
        isLoading.value = false;
        Get.off(
          () => LayoutScreen(),
        );
        Fluttertoast.showToast(
          msg: "Login Sucessfully",
          backgroundColor: Color(0xFF56AEFF),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Email or password is incorrect",
          backgroundColor: Color(0xFF56AEFF),
        );
      }
    } catch (e) {
    } finally {
      isLoading.value = false;
    }
  }
}
