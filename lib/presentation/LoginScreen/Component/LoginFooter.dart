import 'package:deelly/presentation/HomeScreen/HomeScreen.dart';
import 'package:deelly/presentation/Layout/LayoutScreen.dart';
import 'package:deelly/presentation/LoginScreen/Controller/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../components/Button.dart';
import '../../../components/MyText.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(
              text: "Don’t have an account?",
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              latterSpacing: 1,
            ),
            SizedBox(width: 1.w),
            MyText(
              text: "Sign up",
              color: Color(0xFF59C69F),
              align: TextAlign.center,
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              latterSpacing: 1,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Obx(
          () => Button(
            text: "Log In",
            isLoading: controller.isLoading.value,
            onTap: () {
              if (controller.form.currentState!.validate()) {
                if (controller.isChecked.value == true) {
                  controller.login(
                    login: controller.emailController.text,
                    password: controller.passwordController.text,
                    device_id: "dcndjc89",
                  );
                } else {
                  Fluttertoast.showToast(
                    msg: "Terms and conditions",
                  );
                }
              }
            },
          ),
        ),
      ],
    );
  }
}
