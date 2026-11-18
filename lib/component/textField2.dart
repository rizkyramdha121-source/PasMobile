import 'package:flutter/material.dart';

class MyTextfield2 extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final bool isPassword;

  const MyTextfield2({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,

      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
