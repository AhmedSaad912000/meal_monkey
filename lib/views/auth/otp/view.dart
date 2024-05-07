import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'We have sent an OTP to \n your Mobile',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Please check your mobile number 01014695632\n continue to reset your password',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff7C7D7E)),
          ),
          SizedBox(
            height: 36.h,
          ),
          PinCodeTextField(
            keyboardType: TextInputType.number,
            enableActiveFill: true,

            appContext: context,
            length: 4,
             pinTheme: PinTheme(

             ),
          )
        ],
      ),
    );
  }
}
