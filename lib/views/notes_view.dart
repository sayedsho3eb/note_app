import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/add_note_button_sheet.dart';
import 'package:noteapp/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteButtonSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
