import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';

import '../../../core/design/app_input.dart';
import '../../../core/design/input_validation.dart';
class RestPasswordView extends StatelessWidget {
  const RestPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Reset Password',),
      body: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Please enter your email to receive a \nlink to create a new password via email',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff7C7D7E)),
          ),
          SizedBox(
            height: 36.h,
          ),
          AppInput(
            validator: InputValidator.email,
            labelText: 'Email',
          ),
          
        ],
      ),
    );
  }
}