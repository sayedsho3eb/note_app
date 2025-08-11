import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';
import 'package:noteapp/views/widgets/custom_text_fiekd.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, description;

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
                widget.note.title = title ?? widget.note.title;
                widget.note.description =
                    description ?? widget.note.description;
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                widget.note.save();
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: 'EditeNote',
            ),
            SizedBox(height: 50),
            CustomTextFieled(
              onChange: (data) {
                title = data;
              },
              title: widget.note.title,
            ),
            SizedBox(height: 20),
            CustomTextFieled(
              onChange: (data) {
                description = data;
              },
              maxLine: 5,
              title: widget.note.description,
            ),
          ],
        ),
      ),
    );
  }
}
