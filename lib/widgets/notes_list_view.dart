import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/cubit/note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  // final List<Color> data = const [
  //   Color(0xffffe666),
  //   Color(0xfff5c27d),
  //   Color(0xfff6cebf),
  //   Color(0xffe3b7d2),
  //   Color(0xffbfe7f6),
  //   Color(0xfffffff0),
  //   Color(0xfff5fffa),
  //   Color(0xffe0ffff),
  //   Color(0xfffffafa),
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubitCubit, NoteCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NoteCubitCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ListView.separated(
            itemBuilder: (context, index) => NoteItem(
              note: notes[index],
            ),
            itemCount: notes.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
          ),
        );
      },
    );
  }
}
