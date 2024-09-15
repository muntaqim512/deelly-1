import 'package:carousel_slider/carousel_slider.dart';
import 'package:deelly/components/MyText.dart';
import 'package:deelly/presentation/HomeScreen/Constants/CarousalContainer.dart';

import 'package:deelly/presentation/HomeScreen/Constants/CatagoryContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DayContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DealContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DsicountContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/PartnerContainer.dart';
import 'package:deelly/presentation/HomeScreen/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../DetailFullView/DetailFullView.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Expanded(
      flex: 4,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 3.w,
            right: 3.w,
            top: 3.h,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Filter By Category",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101928),
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CatagoryContainer(
                          image: "assets/images/dinning.png",
                          text: "Dinning",
                          color: Color(0xFFD5F4ED),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CatagoryContainer(
                          image: "assets/images/saloon.png",
                          text: "Saloon/Spa",
                          color: Color(0xFFF5E3DB),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CatagoryContainer(
                          image: "assets/images/entertainment.png",
                          text: "Entertainment",
                          color: Color(0xFFF5DCDC),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CatagoryContainer(
                          image: "assets/images/cleaning.png",
                          text: "Cleaning",
                          color: Color(0xFFCFE9FE),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Divider(
                  color: Color(0xFFE9E9E9),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                MyText(
                  text: "Filter By Discount",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101928),
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DiscountContainer(
                          text: "Up to 10%",
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        DiscountContainer(
                          text: "Up to 20%",
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        DiscountContainer(
                          text: "Up to 30%",
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        DiscountContainer(
                          text: "Up to 40%",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Divider(
                  color: Color(0xFFE9E9E9),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                MyText(
                  text: "Upcoming Deal",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101928),
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 1
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 1
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 1
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "25",
                            day: "Today",
                            onTab: () {
                              controller.deal.value = 1;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 2
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 2
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 2
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "26",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 2;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 3
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 3
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 3
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "27",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 3;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 4
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 4
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 4
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "28",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 4;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 5
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 5
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 5
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "29",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 5;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 6
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 6
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 6
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "30",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 6;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Obx(
                          () => DealContainer(
                            dayColor: controller.deal.value == 7
                                ? Colors.black
                                : Color(0xFF628A79),
                            backgroundColor: controller.deal.value == 7
                                ? Color(0xFFD5F4ED)
                                : Colors.transparent,
                            dateColor: controller.deal.value == 7
                                ? Colors.black
                                : Color(0xFF628A79),
                            date: "31",
                            day: "Nov",
                            onTab: () {
                              controller.deal.value = 7;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                CarouselSlider(
                  items: [
                    CarousalContainer(),
                    CarousalContainer(),
                    CarousalContainer(),
                    CarousalContainer(),
                    CarousalContainer(),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: false,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    aspectRatio: 0.2,
                    padEnds: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => Container(
                      width: _currentIndex == index ? 20.0 : 8.0,
                      height: _currentIndex == index ? 8.0 : 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _currentIndex == index
                            ? Color(0xFF5ACD84)
                            : Color(0xFFDEDEDE),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                MyText(
                  text: "Deal of the day",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101928),
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              () => DetailFullView(),
                            );
                          },
                          child: DayaContainer(
                            image: "assets/images/card-1.png",
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              () => DetailFullView(),
                            );
                          },
                          child: DayaContainer(
                            image: "assets/images/card-1.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                MyText(
                  text: "Our Partners",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF101928),
                  fontSize: 13.sp,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          PartnerContainer(
                            image: "assets/images/partner-1.png",
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          PartnerContainer(
                            image: "assets/images/partner-2.png",
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          PartnerContainer(
                            image: "assets/images/partner-3.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          PartnerContainer(
                            image: "assets/images/partner-4.png",
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          PartnerContainer(
                            image: "assets/images/partner-5.png",
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          PartnerContainer(
                            image: "assets/images/partner-6.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
