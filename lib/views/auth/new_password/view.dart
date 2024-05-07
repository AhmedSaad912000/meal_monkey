import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/design/my_appbar.dart';
import 'package:meal_monkey/views/auth/components/auth_header.dart';

import '../../../core/design/app_input.dart';
import '../../../core/design/fill_button.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'New Password',),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              AuthHeader(text: 'Please enter your email to receive a\n link to create a new password via email'),
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
                text: 'Next',
                onPress: (){
                  if(formKey.currentState!.validate()){
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
