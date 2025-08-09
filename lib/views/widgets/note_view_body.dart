import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(title: 'NoteApp', icon: Icons.search),
        ],
      ),
    );
  }
}
