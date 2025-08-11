import 'package:flutter/material.dart';

class CustomTextFieled extends StatelessWidget {
  const CustomTextFieled({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.onSaved, this.onChange,
  });
  final String title;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
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
