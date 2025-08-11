import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteIteam extends StatelessWidget {
  const NoteIteam({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(note.color),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 32, left: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Text(
                  note.description,
                  style: TextStyle(
                    color: Colors.black.withAlpha(100),
                    fontSize: 18,
                  ),
                ),

                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 32),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withAlpha(100),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
