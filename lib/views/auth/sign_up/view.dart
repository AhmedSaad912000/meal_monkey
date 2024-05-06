import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/app_input.dart';
import 'package:meal_monkey/core/design/input_validation.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';

import '../../../core/design/fill_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(text: 'Sign Up',),
      body:SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key:formKey ,
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Add your details to sign up',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7C7D7E)),
              ),
              SizedBox(
                height: 36.h,
              ),
              AppInput(
                labelText: 'Name',
                validator: InputValidator.user,
              ),
              AppInput(
                validator: InputValidator.email,
                labelText: 'Email',
              ),
              AppInput(
                keyboardType: TextInputType.number,
                validator: InputValidator.phone,
                labelText: 'Mobile No',
              ),
              AppInput(
                validator: InputValidator.address,
                labelText: 'Address',
              ),
              AppInput(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This Filed Must Be Required';
                  } else if (value.length<7){
                    return 'Password Must Be At Least 7 Characters';
                  }else if (value != confirmPasswordController.text) {
                    return 'This Password Must Be Match';
                  }
                  else {
                    return null;
                  }
                },
                isPassword: true,
                labelText: 'Password',
              ),
              AppInput(
                controller: confirmPasswordController,
                isPassword: true,
                labelText: 'Confirm Password',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This Filed Must Be Required';
                  } else if (value.length<7){
                    return 'Password Must Be At Least 7 Characters';
                  }else if (value != passwordController.text) {
                    return 'This Password Must Be Match';
                  }
                  else {
                    return null;
                  }
                },
              ),
              FilleButton(
                text: 'Sign Up',
                onPress: (){
                  if(formKey.currentState!.validate()){
                  }
                },
              ),
              SizedBox(height: 24.h,),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Already have an Account? ",style: TextStyle(
                      fontSize:14.sp ,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                      color: Color(0xff7C7D7E),
                    ),),
                    Text("Login",style: TextStyle(
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
