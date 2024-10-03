import 'package:flutter/material.dart';
import 'package:nat/widgets/appBarview.dart';
import 'package:nat/widgets/noteItem.dart';
import 'package:nat/widgets/notesListViewItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
