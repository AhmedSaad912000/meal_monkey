import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/app_image.dart';
import 'package:meal_monkey/core/design/out_button.dart';
import '../../../core/design/fill_button.dart';
class AnotherSplashView extends StatelessWidget {
  const AnotherSplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 410.h,
            child: Stack(
              children: [
                AppImage('splash.png'),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                    child: AppImage('Monkey face.svg')),
              ],
            ),
      ),
              SizedBox(
                height: 14.h,
              ),
              Text.rich(TextSpan(
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                        text: 'Meal',
                        style:
                        TextStyle(color: Theme.of(context).primaryColor)),
                    TextSpan(text: ' Monkey'),
                  ])),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'FOOD DELIVERY',
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4A4B4D)),
              ),
          SizedBox(height: 44.h,),
          Text('Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep',style: TextStyle(
            fontSize:13.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Metropolis',
          ),),
          SizedBox(height: 36.h,),
          Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 34.w),
            child: FilleButton(
              text:'Login',
               onPress: (){},
            ),
          ),
          SizedBox(height: 20.h,),

          Padding(
          padding:  EdgeInsetsDirectional.symmetric(horizontal: 34.w),
            child: OutButton(
              onPress: (){},
              text: 'Create an Account',
            ),
          )
          




        ],
      )
      

    );
  }
}
