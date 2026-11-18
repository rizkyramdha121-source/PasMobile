import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  // list variabel parameter yang dipake

  final String myHint;
  final TextEditingController txtController;
  final double radius; // untuk diisikan ketika dipanggil

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,

      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}