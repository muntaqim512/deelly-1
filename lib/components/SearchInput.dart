import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Helper/Helpers.dart';

class SearchInput extends StatelessWidget {
  final String placeholder;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController controller;
  final bool password;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Color? hintColor;
  final Color? textColor;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const SearchInput({
    super.key,
    required this.placeholder,
    this.prefixIcon,
    this.fillColor = const Color(0xFFF5F5F5), // Default light background color
    this.hintColor = Colors.black26,
    this.textColor = Colors.black87,
    required this.controller,
    this.password = false,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    this.onChanged,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor, // Background color for the input field
        hintText: placeholder,
        prefixIcon: Icon(Icons.search_sharp,
            color: Colors.black45), // Search icon as prefix
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Rounded border
          borderSide: BorderSide(
            color: Colors.transparent, // No border for a cleaner look
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorStyle: GoogleFonts.poppins(),
        hintStyle: GoogleFonts.poppins(
          color: hintColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(Helpers.SecondryColor),
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusColor: Color(Helpers.SecondryColor),
        contentPadding: contentPadding,
      ),
      cursorColor: Color(Helpers.SecondryColor),
      style: GoogleFonts.poppins(
        color: textColor ?? Colors.black87,
        fontSize: 14,
      ),
    );
  }
}
