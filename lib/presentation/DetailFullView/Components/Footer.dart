import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 7.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Color(0xFF5ACD84),
              ),
            ),
            child: Center(
              child: MyText(
                text: "Add to Cart",
                color: Color(0xFF101928),
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 3.w,
        ),
        Expanded(
          child: Container(
            height: 7.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: MyText(
                text: "Buy Now",
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
