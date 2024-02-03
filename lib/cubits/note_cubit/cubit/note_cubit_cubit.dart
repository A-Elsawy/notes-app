import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());

  List<NoteModel>? notes;

  void fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>('notes_box');

    notes = notesBox.values.toList();

    emit(NoteCubitSuccess());
  }
}
