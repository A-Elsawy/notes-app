import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Notes',
              icon: FontAwesomeIcons.magnifyingGlass,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
