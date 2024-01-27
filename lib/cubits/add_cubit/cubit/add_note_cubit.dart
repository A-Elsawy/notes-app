import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel noteModel) async {
    emit(AddNoteLoading());
    try {
      Box notesBox = Hive.box('notes_box');

      emit(AddNoteSuccess());
      await notesBox.add(noteModel);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
