import 'package:deelly/components/Button.dart';
import 'package:deelly/components/InputField.dart';
import 'package:deelly/components/MyText.dart';
import 'package:deelly/presentation/LoginScreen/Component/LoginFooter.dart';
import 'package:deelly/presentation/LoginScreen/Component/LoginHeader.dart';
import 'package:deelly/presentation/LoginScreen/Component/LoginBody.dart';
import 'package:deelly/presentation/LoginScreen/Controller/LoginController.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(
          left: 3.w,
          right: 3.w,
          top: 7.h,
          bottom: 5.h,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom, // Adjust for keyboard
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      LoginHeader(),
                      SizedBox(height: 10.h),
                      // Body
                      LoginBody(),
                      Spacer(),

                      // Footer
                      LoginFooter(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
