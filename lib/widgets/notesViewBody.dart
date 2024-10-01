import 'package:flutter/material.dart';
import 'package:nat/widgets/appBarview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        CustomAppBar(),
      ],
    );
  }
}
