import 'package:deelly/components/MyText.dart';
import 'package:deelly/presentation/DetailFullView/Components/ChooseLocation.dart';
import 'package:deelly/presentation/DetailFullView/Components/Description.dart';
import 'package:deelly/presentation/DetailFullView/Components/Footer.dart';
import 'package:deelly/presentation/DetailFullView/Components/HeaderDetail.dart';
import 'package:deelly/presentation/DetailFullView/Components/Reviews_suggested.dart';
import 'package:deelly/presentation/DetailFullView/Controller/DetailController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'Constants/GradientText.dart';

class DetailFullView extends StatefulWidget {
  @override
  State<DetailFullView> createState() => _DetailFullViewState();
}

class _DetailFullViewState extends State<DetailFullView> {
  String dropdownValue = 'Palm Jumeirah';
  DetailController controller = Get.put(DetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Header
          HeaderDetail(),
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 2.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GradientText(
                            '30% off',
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xff5ACD84),
                                Color(0xff56AEFF),
                              ],
                            ),
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/v.png",
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    width: 1.h,
                                  ),
                                  MyText(
                                    text: "Sold:",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38,
                                  ),
                                  MyText(
                                    text: " 564",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101928),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  MyText(
                                    text: "5.0",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF59B99D),
                                    size: 2.h,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  MyText(
                                    text: "(7 reviews)",
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      MyText(
                        text: "Ristorante – Niko ",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF101928),
                      ),
                      MyText(
                        text: "Romito",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF101928),
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
                      // ChooseLocation
                      ChooseLocation(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: "Share:",
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/facebook.png",
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Image.asset(
                                "assets/images/twitter.png",
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Image.asset(
                                "assets/images/whatsapp.png",
                                height: 4.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Image.asset(
                                "assets/images/docs.png",
                                height: 4.h,
                              ),
                            ],
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
                      // Description
                      Description(),
                      //  Reviews & Suggested
                      Review_suggested(),
                      SizedBox(
                        height: 2.h,
                      ),
                      //  Footer
                      Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
