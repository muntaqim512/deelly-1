import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class Review extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  const Review(
      {super.key, required this.image, required this.name, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 5.h,
                  height: 5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: name,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 0.2.h,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            for (var i = 0; i < 5; i++)
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFFE4A70A),
                                    size: 2.h,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                ],
                              ),
                          ],
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        MyText(
                          text: "2 mins ago",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_vert,
              color: Color(0xFF1E1E1E),
              size: 3.h,
            ),
          ],
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: MyText(
                  text: desc,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA4A7AC),
                  align: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          color: Color(0xFFE8E8E8),
        ),
        SizedBox(
          height: 1.5.h,
        ),
      ],
    );
  }
}
