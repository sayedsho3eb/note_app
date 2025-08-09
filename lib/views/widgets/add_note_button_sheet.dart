import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_text_fiekd.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomTextFieled.CustomTextField(title: 'Title'),
          SizedBox(height: 10),
          CustomTextFieled.CustomTextField(title: 'Description', maxLine: 5),
          SizedBox(height: 50),
          CustomButtom(onTap: () {}),
        ],
      ),
    );
  }
}
