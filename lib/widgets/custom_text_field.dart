import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;

  const CustomTextField({
    super.key,
    this.hintText,
    this.maxLines,
    this.onSaved,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChange,
      validator: (value) => value?.isEmpty ?? true ? 'Field is required' : null,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white60,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
