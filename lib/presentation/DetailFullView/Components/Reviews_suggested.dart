import 'package:deelly/components/MyText.dart';
import 'package:deelly/presentation/DetailFullView/Constants/Rating.dart';
import 'package:deelly/presentation/DetailFullView/Constants/Review.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DayContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Review_suggested extends StatelessWidget {
  const Review_suggested({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "Reviews",
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
                vertical: 1.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/p.png",
                    width: 3.w,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  MyText(
                    text: "Write Review",
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 3.5.w,
            vertical: 2.h,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFEBFCF8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Rating(
                    text: "5",
                    width: 40.w,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Rating(
                    text: "4",
                    width: 30.w,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Rating(
                    text: "3",
                    width: 20.w,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Rating(
                    text: "2",
                    width: 10.w,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Rating(
                    text: "1",
                    width: 5.w,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: "4.5",
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: i == 4
                                  ? Color(0xFFDDDDDD)
                                  : Color(0xFFE4A70A),
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
                    height: 1.h,
                  ),
                  MyText(
                    text: "52 Reviews",
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 3.5.h,
        ),
        Review(
          image: "assets/images/p-1.png",
          name: "Courtney Henry",
          desc:
              "Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua",
        ),
        Review(
          image: "assets/images/p-2.png",
          name: "Cameron Williamson",
          desc:
              "Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco.",
        ),
        Review(
          image: "assets/images/p-3.png",
          name: "Jane Cooper",
          desc:
              "Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex.",
        ),
        MyText(
          text: "Suggested Deals",
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DayaContainer(
                  image: "assets/images/bg-1.png",
                ),
                SizedBox(
                  width: 3.w,
                ),
                DayaContainer(
                  image: "assets/images/bg-1.png",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
