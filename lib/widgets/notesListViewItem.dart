import 'package:flutter/material.dart';
import 'package:nat/widgets/noteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}
