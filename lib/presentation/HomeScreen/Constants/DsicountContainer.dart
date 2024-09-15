import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class DiscountContainer extends StatelessWidget {
  final String text;
  const DiscountContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF8AD4C4),
        ),
      ),
      child: Center(
        child: MyText(
          text: text,
          align: TextAlign.center,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFF628A79),
        ),
      ),
    );
  }
}
