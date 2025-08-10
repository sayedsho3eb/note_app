import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_text_fiekd.dart';

class AddFormKey extends StatefulWidget {
  const AddFormKey({super.key});

  @override
  State<AddFormKey> createState() => _AddFormKeyState();
}

class _AddFormKeyState extends State<AddFormKey> {
  String? title, description;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomTextFieled(
            onSaved: (data) {
              title = data;
            },
            title: 'Title',
          ),
          SizedBox(height: 10),
          CustomTextFieled(
            onSaved: (data) {
              description = data;
            },
            title: 'Description',
            maxLine: 5,
          ),
          SizedBox(height: 50),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
