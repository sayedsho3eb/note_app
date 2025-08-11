import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constance.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/simpile_bloc_observer.dart';
import 'package:noteapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpileBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotebox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),

      home: NotesView(),
    );
  }
}
