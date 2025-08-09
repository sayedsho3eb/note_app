import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/note_iteam.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteIteam(),
        );
      },
    );
  }
}
