// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'MyText.dart';

class Button extends StatelessWidget {
  final String text;
  final double fontsize;

  final Color color;
  final Function onTap;
  final bool isLoading;

  Button({
    super.key,
    required this.text,
    this.fontsize = 18,
    required this.onTap,
    this.isLoading = false,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          onTap();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        width: double.infinity,
        child: MyText(
          color: color,
          text: isLoading ? "Please Wait..." : text,
          fontWeight: FontWeight.w500,
          fontSize: fontsize,
          align: TextAlign.center,
        ),
      ),
    );
  }
}
