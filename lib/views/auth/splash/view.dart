import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/app_image.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: AppImage(
            'background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: FadeInDownBig(
              duration: Duration(seconds: 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppImage('Monkey face.svg'),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
