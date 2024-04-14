import 'package:flutter/material.dart';

class CustomTextDesign extends StatelessWidget {
  final String inputText;
  const CustomTextDesign(this.inputText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(inputText,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromARGB(255, 75, 74, 74)));
  }
}
