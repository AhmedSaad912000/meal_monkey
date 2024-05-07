import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/auth/otp/view.dart';
import 'views/auth/reset_password/view.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MealMonkey',
        theme: ThemeData(
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xffFC6011),
              fixedSize: Size.fromHeight(56.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(28.r),

              )
            )
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style:OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffFC6011)),
              fixedSize: Size.fromHeight(56.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(28.r),

              )
            )
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle:TextStyle(
                fontSize:14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Metropolis',
                color: Color(0xffB6B7B7)
            ),
            hintStyle: TextStyle(
              fontSize:14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Metropolis',
              color: Color(0xffB6B7B7)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.r),
              borderSide: BorderSide(color: Color(0xffF2F2F2))
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.r),
                borderSide: BorderSide(color: Color(0xffF2F2F2))

            ),
           border:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(28.r),
    borderSide: BorderSide(color: Color(0xffF2F2F2))

    ),),

          fontFamily: 'Cabin',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,primary: Color(0xffFC6011)),
          useMaterial3: true,
        ),
        home:child
      ),
      child:OTPView(),
    );
  }
}