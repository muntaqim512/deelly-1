import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class CatagoryContainer extends StatelessWidget {
  final Color? color;
  final String image;
  final String text;
  const CatagoryContainer(
      {super.key, this.color, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 8.h,
            height: 8.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 12.w,
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          MyText(
            text: text,
            align: TextAlign.center,
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
