import 'package:flutter/material.dart';

class CustomTextFiekd extends StatelessWidget {
  const CustomTextFiekd({super.key, required this.title, this.maxLine = 1});
  final String title;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: 'Title',

        border: borderSide(),
        enabledBorder: borderSide(),
        focusedBorder: borderSide(),
      ),
    );
  }

  OutlineInputBorder borderSide() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
