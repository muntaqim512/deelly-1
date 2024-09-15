import 'package:deelly/components/MyText.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageContainer extends StatelessWidget {
  final String image;
  final String text;
  const ImageContainer({super.key, required this.image, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6.h,
      height: 6.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Center(
        child: MyText(
          text: text,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
