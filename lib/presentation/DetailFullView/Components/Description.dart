import 'package:deelly/components/MyText.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: "Description",
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.h,
        ),
        MyText(
          text: "Highlights",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: MyText(
                  text:
                      "patrons can choose from a selection of international cuisine for lunch or dinner complete with soft drink or house beverages",
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
        MyText(
          text: "About These Deal",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.h,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'type of cuisine: ',
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'internationals\n',
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA4A7AC),
                ),
              ),
              TextSpan(
                text: 'multiple starters mains and desserts\n',
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA4A7AC),
                ),
              ),
              TextSpan(
                text: 'free flowing soft drink over two house beverages\n',
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA4A7AC),
                ),
              ),
              TextSpan(
                text: 'valid 7 days a week',
                style: GoogleFonts.outfit(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA4A7AC),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          color: Color(0xFFE8E8E8),
        ),
        SizedBox(
          height: 2.h,
        ),
        MyText(
          text: "Terms & Conditions",
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.h,
        ),
        MyText(
          text: "Fine Print",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: MyText(
                  text:
                      "Child option valid for ages4 to 12 years. valid for dine-in only. ",
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
        MyText(
          text: "Valid days and hours",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: MyText(
                  text:
                      "Seven days a week, known 3:00 PM and 6:30 PM. 10:30 PM. Prior booking/cancelation (subject to available) at least 4 hours in advance. Expires 3 month after purchase. Limit 4 per person(s), may buy 3 additional as gift(s).",
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
          height: 2.h,
        ),
        MyText(
          text: "Store Details",
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.h,
        ),
        MyText(
          text: "TJ Foods Corniche",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 1.h,
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
              text: "Abu Dhabi, United Arab Emirates",
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black38,
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        MyText(
          text: "+525201212",
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          color: Color(0xFFE8E8E8),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
