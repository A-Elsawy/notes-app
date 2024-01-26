import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/cutom_button.dart';

class AddCustomNoteBottomSheet extends StatelessWidget {
  const AddCustomNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 25),
            CustomTextField(
              hintText: 'Note',
              maxLines: 6,
            ),
            SizedBox(height: 45),
            CustomButton(text: 'Add'),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
