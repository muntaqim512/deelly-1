import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Helper/Helpers.dart';

class InputText extends StatelessWidget {
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
  const InputText({
    super.key,
    required this.placeholder,
    this.prefixIcon,
    this.fillColor = Colors.transparent,
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
        fillColor: fillColor,
        hintText: placeholder,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFF606060),
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
          color: Colors.black26,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(Helpers.SecondryColor),
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
        color: Colors.black87,
        fontSize: 14,
      ),
    );
  }
}
