import 'package:deelly/components/SearchInput.dart';
import 'package:deelly/presentation/HomeScreen/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Expanded(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
            left: 3.w,
            right: 3.w,
            top: 4.h,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      MyText(
                        text: "UAE",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff101928),
                      ),
                      SizedBox(
                        width: 0.5.w,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                        size: 2.h,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 25.w,
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4.w, top: 1.h),
                            child: Image.asset(
                              "assets/images/Buy.png",
                              width: 7.w,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.w,
                            ),
                            child: Container(
                              width: 3.h,
                              height: 3.h,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: Center(
                                child: MyText(
                                  text: "03",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 7.sp,
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
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: SearchInput(
                      placeholder: "Search...",
                      controller: controller.searchController,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Filter.png",
                          height: 2.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
