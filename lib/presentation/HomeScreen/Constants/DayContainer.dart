import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class DayaContainer extends StatelessWidget {
  final String image;
  const DayaContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 18.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
                vertical: 2.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MyText(
                      text: "30% Off",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    "assets/images/heart.png",
                    height: 3.h,
                    width: 10.w,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          MyText(
            text: "Ristorante – Niko Romito",
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          MyText(
            text: "Dine and enjoy a 20% Discount",
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA3A7AC),
          ),
          SizedBox(
            height: 1.h,
          ),
          Divider(
            color: Color(0xFFECECEC),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/Location.png",
                height: 2.h,
              ),
              SizedBox(
                width: 1.w,
              ),
              MyText(
                text: "Ristorante L’Olivo at Al Mahad ...",
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFFA3A7AC),
              ),
              SizedBox(
                width: 1.w,
              ),
              MyText(
                text: "+5 more",
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF59B99D),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MyText(
                    text: "5.0",
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA3A7AC),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Icon(
                    Icons.star,
                    size: 2.h,
                    color: Color(0xFF59B99D),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  MyText(
                    text: "(7 reviews)",
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA3A7AC),
                  ),
                ],
              ),
              Row(
                children: [
                  MyText(
                    text: "Sold: 7350",
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA3A7AC),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
