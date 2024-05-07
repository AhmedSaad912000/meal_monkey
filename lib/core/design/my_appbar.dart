import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const MyAppBar({super.key,  this.text=''});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsetsDirectional.symmetric(horizontal: 8.w,vertical: 16.h),
        child: Center(
          child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w800,
            fontFamily: 'Metropolis',
            color: Color(0xff4A4B4D)
          ),),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.h);
}
