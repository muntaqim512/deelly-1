import 'package:deelly/presentation/DetailFullView/Controller/DetailController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class TimeContainer extends StatelessWidget {
  final String time;
  final String seat;
  final void Function()? onTab;
  final Color background;
  final Color color;
  const TimeContainer(
      {super.key,
      required this.time,
      required this.seat,
      this.onTab,
      required this.background,
      required this.color});

  @override
  Widget build(BuildContext context) {
    DetailController controller = Get.put(DetailController());
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: time,
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: color,
              align: TextAlign.center,
            ),
            MyText(
              text: seat,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: color,
              align: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
