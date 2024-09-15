import 'package:deelly/presentation/DetailFullView/Constants/ImageContainer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/banner-Image.png",
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 4.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    "assets/images/back-arrow.png",
                    height: 4.h,
                  ),
                ),
                Image.asset(
                  "assets/images/heart-1.png",
                  height: 4.h,
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageContainer(
                      image: "assets/images/Rec-5.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    ImageContainer(
                      image: "assets/images/Rec-4.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    ImageContainer(
                      image: "assets/images/Rec-3.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    ImageContainer(
                      image: "assets/images/Rec-2.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    ImageContainer(
                      image: "assets/images/Rec-1.png",
                      text: "+5",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
