import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 57, 57, 57),
      ),
      child: const Center(
        child: Icon(
          Icons.search_rounded,
          size: 30,
        ),
      ),
    );
  }
}
