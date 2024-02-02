import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // ------------------
      body: const NotesViewBody(),
      // ------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            context: context,
            builder: (context) => const AddCustomNoteBottomSheet(),
          );
        },
        backgroundColor: Colors.black45,
        child: const Icon(Icons.add),
      ),
    );
  }
}
