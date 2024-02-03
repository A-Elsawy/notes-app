import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;

  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title),
              titleTextStyle:
                  const TextStyle(fontSize: 26, color: Colors.black),
              contentPadding: const EdgeInsets.all(0),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(note.subTitle),
              ),
              subtitleTextStyle:
                  TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                iconSize: 25,
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ),
            // --------------------------------------
            const SizedBox(
              height: 15,
            ),
            // -----------------------------------
            Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
