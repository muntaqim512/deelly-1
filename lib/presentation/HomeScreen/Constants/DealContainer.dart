import 'package:deelly/presentation/HomeScreen/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class DealContainer extends StatelessWidget {
  final void Function()? onTab;
  final String date;
  final String day;
  final Color backgroundColor;
  final Color dayColor;
  final Color dateColor;
  const DealContainer(
      {super.key,
      this.onTab,
      required this.date,
      required this.day,
      required this.backgroundColor,
      required this.dayColor,
      required this.dateColor});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: 15.w,
        height: 8.6.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color(0xFFA4DACE),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: date,
              fontWeight: FontWeight.w600,
              color: dateColor,
              fontSize: 13.sp,
            ),
            MyText(
              text: day,
              fontWeight: FontWeight.w400,
              color: dayColor,
              fontSize: 10.sp,
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
