import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => const NoteItem(),
      itemCount: 15,
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
