import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/cutom_button.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check_circle_rounded,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(hintText: 'Title'),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 6,
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(text: 'Edit'),
          ],
        ),
      ),
    );
  }
}
