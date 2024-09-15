import 'package:deelly/components/MyText.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Rating extends StatelessWidget {
  final String text;
  final double? width;
  const Rating({super.key, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(
          text: text,
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          width: 1.w,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFE4A70A),
          size: 2.h,
        ),
        SizedBox(
          width: 1.w,
        ),
        Container(
          height: 1.h,
          width: width,
          decoration: BoxDecoration(
            color: Color(0xFF5ACD84),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
