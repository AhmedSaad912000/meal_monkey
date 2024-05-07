import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/app_input.dart';
import 'package:meal_monkey/core/design/input_validation.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';
import 'package:meal_monkey/views/auth/components/auth_header.dart';
import '../../../core/design/app_image.dart';
import '../../../core/design/fill_button.dart';
part 'components/item.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}
class _LoginViewState extends State<LoginView> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'Login',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              AuthHeader(text: 'Add your details to login'),
              AppInput(
                validator: InputValidator.email,
                labelText: 'Your Email',
              ),
              AppInput(
                validator: InputValidator.password,
                labelText: 'Password',
                isPassword: true,
              ),
              FilleButton(
                text: 'Login',
                onPress: () {
                  if(formKey.currentState!.validate()){

                  }
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Forgot your password?',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7C7D7E),
                    fontFamily: 'Metropolis'
                ),
              ),
              SizedBox(
                height: 49.h,
              ),
              Text(
                'or Login With',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7C7D7E),
                    fontFamily: 'Metropolis'),
              ),
              SizedBox(
                height: 27.h,
              ),
              Item(
                  color: Color(0xff367FC0),
                  image: 'facebook.png',
                  text: 'Login with Facebook'),
              Item(
                color: Color(0xffDD4B39),
                image: 'google.png',
                text: 'Login with Google',
                bottomSpace: 60.h,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(
                      fontSize:14.sp ,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                      color: Color(0xff7C7D7E),
                    ),),
                    Text("Sign Up",style: TextStyle(
                      fontSize:14.sp ,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                      color: Theme.of(context).primaryColor
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 25.h,)
            ],
          ),
        ),
      ),
    );
  }
}
