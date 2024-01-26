import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddCustomNoteBottomSheet extends StatelessWidget {
  const AddCustomNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextField(hintText: 'Title'),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: 'Note',
              maxLines: 6,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white54,
              minWidth: 150,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Click',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
