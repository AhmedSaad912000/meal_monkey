import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';
import 'package:meal_monkey/views/auth/components/auth_header.dart';

import '../../../core/design/app_input.dart';
import '../../../core/design/fill_button.dart';
import '../../../core/design/input_validation.dart';
class RestPasswordView extends StatefulWidget {
  const RestPasswordView({super.key});

  @override
  State<RestPasswordView> createState() => _RestPasswordViewState();
}

class _RestPasswordViewState extends State<RestPasswordView> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Reset Password',),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
             AuthHeader(text: 'Please enter your email to receive a \nlink to create a new password via email'),
              AppInput(
                validator: InputValidator.email,
                labelText: 'Email',
              ),
              FilleButton(
                onPress: (){
                  if(formKey.currentState!.validate()){

                  }
                },
                text: 'Send',
              )



            ],
          ),
        ),
      ),
    );
  }
}
