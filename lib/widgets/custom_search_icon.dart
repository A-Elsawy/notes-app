import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  const CustomSearchIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 57, 57, 57),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
