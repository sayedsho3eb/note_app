import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_button.dart';
import 'package:noteapp/views/widgets/custom_text_fiekd.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButtom(
                isLoading: state is AddNotesLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var notModel = NoteModel(
                      title: title!,
                      description: description!,
                      date: DateTime.now().toString(),
                      color: Colors.lightGreenAccent.hashCode,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(notModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
