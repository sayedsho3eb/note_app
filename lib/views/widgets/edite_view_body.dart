import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_text_fiekd.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppbar(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: 'EditeNote',
            ),
            SizedBox(height: 50),
            CustomTextFieled.CustomTextField(title: 'Title'),
            SizedBox(height: 20),
            CustomTextFieled.CustomTextField(maxLine: 5, title: 'Description'),
          ],
        ),
      ),
    );
  }
}
