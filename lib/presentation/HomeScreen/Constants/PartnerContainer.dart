import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PartnerContainer extends StatelessWidget {
  final String image;
  const PartnerContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 8.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color(0xFFDBDBDB),
          ),
        ),
        child: Center(
          child: Image.asset(
            image,
            width: 20.w,
          ),
        ),
      ),
    );
  }
}
