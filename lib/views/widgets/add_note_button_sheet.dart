import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/views/widgets/add_Note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),

        child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
              if (state is AddNotesfailure) {
                log(state.errorMessage);
              } else if (state is AddNotesSuccess) {

                 BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNotesLoading ? true : false,
                child: AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
