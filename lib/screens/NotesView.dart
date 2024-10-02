import 'package:flutter/material.dart';
import 'package:nat/widgets/notesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 17, right: 17),
        child: NotesViewBody(),
      ),
    );
  }
}
