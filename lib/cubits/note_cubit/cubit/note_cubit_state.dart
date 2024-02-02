part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

// final class NoteCubitLoading extends NoteCubitState {}

// final class NoteCubitSuccess extends NoteCubitState {
//   final List<NoteModel> notes;

//   NoteCubitSuccess(this.notes);
// }

// final class NoteCubitFailure extends NoteCubitState {
//   final String errMessage;

//   NoteCubitFailure(this.errMessage);
// }
