import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/views/widgets/custom_appbar.dart';
import 'package:noteapp/views/widgets/note_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(onPressed: () {}, title: 'NoteApp', icon: Icons.search),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: NoteListView(),
            ),
          ),
        ],
      ),
    );
  }
}
