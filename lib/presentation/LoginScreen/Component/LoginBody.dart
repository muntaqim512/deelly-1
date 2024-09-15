import 'package:deelly/presentation/LoginScreen/Controller/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../Helper/Helpers.dart';
import '../../../components/InputField.dart';
import '../../../components/MyText.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Form(
      key: controller.form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: "Email",
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
          ),
          SizedBox(height: 1.h),
          InputText(
            placeholder: "Email",
            controller: controller.emailController,
            validator: (value) {
              return Helpers.validate(
                  value: value ?? '',
                  is_required: true,
                  fieldName: "email",
                  is_email: true);
            },
          ),
          SizedBox(height: 4.h),
          MyText(
            text: "Password",
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
          ),
          SizedBox(height: 1.h),
          InputText(
            placeholder: "Password",
            controller: controller.passwordController,
            password: true,
            validator: (value) {
              return Helpers.validate(
                value: value ?? '',
                is_required: true,
                fieldName: "password",
              );
            },
          ),
          SizedBox(height: 1.5.h),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 2.w),
              child: MyText(
                text: "Forgot password?",
                color: Color(0xFF56B3EB),
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: GestureDetector(
                  onTap: () {
                    controller.isChecked.value = !controller.isChecked.value;
                  },
                  child: Obx(
                    () => Container(
                      width: 2.2.h,
                      height: 2.2.h,
                      decoration: BoxDecoration(
                        color: controller.isChecked.value
                            ? Color(0xFF2F6050)
                            : Colors.transparent,
                        border: Border.all(color: Colors.black38, width: 1.5),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      child: controller.isChecked.value
                          ? Icon(Icons.check, color: Colors.white, size: 1.5.h)
                          : null,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 2.w),
              MyText(
                text: "I agree with the terms and condition",
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 9.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
