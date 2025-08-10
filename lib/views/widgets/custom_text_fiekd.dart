import 'package:flutter/material.dart';

class CustomTextFieled extends StatelessWidget {
  const CustomTextFieled({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.onSaved,
  });
  final String title;
  final int maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLine,

      decoration: InputDecoration(
        hintText: title,

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
