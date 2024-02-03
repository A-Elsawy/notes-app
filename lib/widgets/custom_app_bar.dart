import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
