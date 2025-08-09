import 'package:flutter/material.dart';
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
          CustomTextFiekd(title: 'Title'),
          SizedBox(height: 10),
          CustomTextFiekd(title: 'Description', maxLine: 5),
        ],
      ),
    );
  }
}
