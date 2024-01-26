import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

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
              title: 'Edit',
              icon: Icons.check_circle_rounded,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
