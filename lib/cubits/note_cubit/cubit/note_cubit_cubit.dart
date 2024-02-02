import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());

  void fetchAllNotes(NoteModel noteModel) async {
    try {
      var notesBox = Hive.box<NoteModel>('notes_box');

      List<NoteModel> notes = notesBox.values.toList();

      emit(NoteCubitSuccess(notes));
    } catch (e) {
      emit(NoteCubitFailure(e.toString()));
    }
  }
}
