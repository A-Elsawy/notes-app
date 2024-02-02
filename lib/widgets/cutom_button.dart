import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool isLoading;
  const CustomButton(
      {super.key, required this.text, this.onTap, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}
