import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constance.dart';
import 'package:noteapp/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notBox = await Hive.box<NoteModel>(kNotebox);
      notBox.add(note);
      emit(AddNotesSuccess());
    } on Exception catch (e) {
      emit(AddNotesfailure(e.toString()));
    }
  }
}
