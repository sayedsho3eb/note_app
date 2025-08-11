import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constance.dart';
import 'package:noteapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchNotes() async {
    var notBox = await Hive.box<NoteModel>(kNotebox);

    List<NoteModel> notes = notBox.values.toList();

    emit(NotesSuccess(notes));
  }
}
