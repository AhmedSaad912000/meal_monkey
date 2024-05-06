import 'package:flutter/material.dart';

class OutButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;

  const OutButton({super.key,  this.text='', this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child: OutlinedButton(onPressed: onPress, child: Text(text)));
  }
}
