import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key, required this.textfieldColor, required this.textcontroller});
  final TextEditingController textcontroller;
  final Color textfieldColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: TextField(
        controller: textcontroller,
        textAlign: TextAlign.end,
        decoration: InputDecoration(border: InputBorder.none),
        style: TextStyle(color: textfieldColor, fontSize: 40),
      ),
    );
  }
}
