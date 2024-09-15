import 'package:deelly/components/MyText.dart';
import 'package:deelly/main.dart';
import 'package:deelly/presentation/HomeScreen/Components/Header.dart';
import 'package:deelly/presentation/HomeScreen/Components/HomeBody.dart';
import 'package:deelly/presentation/HomeScreen/Constants/CatagoryContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DayContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DealContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/DsicountContainer.dart';
import 'package:deelly/presentation/HomeScreen/Constants/PartnerContainer.dart';
import 'package:deelly/presentation/HomeScreen/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F4ED),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Header
          Header(),
          // Home Body

          HomeBody(),
        ],
      ),
    );
  }
}
