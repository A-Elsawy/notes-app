import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddCustomNoteBottomSheet extends StatelessWidget {
  const AddCustomNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: AddNoteForm(),
      ),
    );
  }
}
