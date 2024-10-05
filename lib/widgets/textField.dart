import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key, required this.hint, this.maxLine = 1, this.onSaved});

  @override
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;

  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Vaild Is Required';
        }
      },
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.deepPurple,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
