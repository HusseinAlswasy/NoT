import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.nameAppBar, required this.icon});

  @override
  String nameAppBar;
  final IconData icon;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameAppBar,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Icon(
              icon,
            ),
          ),
        ),
      ],
    );
  }
}
