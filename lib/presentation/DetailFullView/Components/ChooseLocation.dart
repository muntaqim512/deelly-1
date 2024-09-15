import 'package:deelly/components/MyText.dart';
import 'package:deelly/presentation/DetailFullView/Constants/TimeContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Controller/DetailController.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Palm Jumeirah';
    DetailController controller = Get.put(DetailController());
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 3.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEBFCF8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: "Choose Location",
            color: Color(0xFF808080),
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey),
              iconSize: 24,
              elevation: 16,
              underline: SizedBox(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Palm Jumeirah', 'Other location']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.outfit(
                      color: Colors.black45,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          MyText(
            text: "Select Date",
            color: Color(0xFF808080),
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 2.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "30 Nov 2023",
                  color: Colors.black38,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                Image.asset(
                  "assets/images/Calendar.png",
                  height: 2.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          MyText(
            text: "Choose Time Slot",
            color: Colors.black,
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Obx(
                    () => TimeContainer(
                      time: "1:00 PM",
                      seat: "Seat: 15",
                      background: controller.choose.value == 1
                          ? Color(0xFF5ACD84)
                          : Color(0xFFD6EFE9),
                      color: controller.choose.value == 1
                          ? Colors.white
                          : Colors.black,
                      onTab: () {
                        controller.choose.value = 1;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Obx(
                    () => TimeContainer(
                      time: "1:00 PM",
                      seat: "Seat: 18",
                      background: controller.choose.value == 2
                          ? Color(0xFF5ACD84)
                          : Color(0xFFD6EFE9),
                      color: controller.choose.value == 2
                          ? Colors.white
                          : Colors.black,
                      onTab: () {
                        controller.choose.value = 2;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Obx(
                    () => TimeContainer(
                      time: "1:00 PM",
                      seat: "Seat: 7",
                      background: controller.choose.value == 3
                          ? Color(0xFF5ACD84)
                          : Color(0xFFD6EFE9),
                      color: controller.choose.value == 3
                          ? Colors.white
                          : Colors.black,
                      onTab: () {
                        controller.choose.value = 3;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Reservation Fee",
                    color: Colors.black38,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  MyText(
                    text: "20 AED",
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: controller.decreament,
                    child: Container(
                      width: 4.h,
                      height: 4.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/m.png",
                          width: 3.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Obx(
                    () => MyText(
                      text: controller.num.value.toString(),
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  GestureDetector(
                    onTap: controller.increament,
                    child: Container(
                      width: 4.h,
                      height: 4.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/p.png",
                          width: 3.w,
                        ),
                      ),
                    ),
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
