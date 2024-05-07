import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/fill_button.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';
import 'package:meal_monkey/views/auth/components/auth_header.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'We have sent an OTP to \n your Mobile',
      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          children: [
            AuthHeader(text: 'Please check your mobile number 01014695632\n continue to reset your password'),
            PinCodeTextField(
              keyboardType: TextInputType.number,
              enableActiveFill: true,
              appContext: context,
              cursorColor: Theme.of(context).primaryColor,
              length: 4,
               pinTheme: PinTheme(
                 selectedColor:Color(0xffF2F2F2),
                 activeColor:Theme.of(context).primaryColor ,
                 selectedFillColor:Color(0xffF2F2F2) ,
                 activeFillColor:Color(0xffF2F2F2) ,
                 inactiveFillColor: Color(0xffF2F2F2),
                 inactiveColor:Color(0xffF2F2F2) ,
                 fieldHeight: 56.h,
                 fieldWidth: 56.w,
                 borderRadius: BorderRadius.circular(12.sp),
                 shape:PinCodeFieldShape.box

               ),
            ),
            SizedBox(height: 35.h,),
            FilleButton(
              onPress: (){},
              text: 'Next',
            ),
            SizedBox(height: 50.h,),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Didn't Receive? ",style: TextStyle(
                    fontSize:14.sp ,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Metropolis',
                    color: Color(0xff7C7D7E),
                  ),),
                  Text("Click Her",style: TextStyle(
                      fontSize:14.sp ,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                      color: Theme.of(context).primaryColor
                  ),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
