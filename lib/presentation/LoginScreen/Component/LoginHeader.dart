import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/MyText.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.w,
            ),
            MyText(
              text: "Sign In",
              fontSize: 15.sp,
              align: TextAlign.center,
              fontWeight: FontWeight.w600,
              latterSpacing: 2,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 63.w,
          ),
        ),
      ],
    );
  }
}
