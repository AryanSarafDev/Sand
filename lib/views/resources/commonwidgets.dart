import 'package:flutter/material.dart';
import 'package:sand/views/resources/pallete.dart';
class CustomTextField extends StatelessWidget {
  final double fontSize;
  final double fieldWidth;
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final Color backgroundColor;

  const CustomTextField({Key? key, required this.fontSize, required this.fieldWidth, required this.hintText, required this.controller, required this.inputType, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: fieldWidth,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(width: 10)
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Pallete.backgroundColor,)
          ),
          style: TextStyle(
            fontSize: fontSize,color: Pallete.backgroundColor
          ),
          controller: controller,
          keyboardType: inputType,
        ),
        decoration: BoxDecoration( color: backgroundColor,borderRadius:  BorderRadius.circular(10)),

      ),
    );
  }
}
