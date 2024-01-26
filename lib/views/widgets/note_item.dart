import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text('Flutter Tips'),
            titleTextStyle: const TextStyle(fontSize: 26, color: Colors.black),
            contentPadding: const EdgeInsets.all(0),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text('Build your career with Ahmed Elsawy'),
            ),
            subtitleTextStyle:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
            trailing: IconButton(
              onPressed: () {},
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
            'Mat 21, 2023',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
