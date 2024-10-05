import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.OnTap});

  @override
  final void Function()? OnTap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
