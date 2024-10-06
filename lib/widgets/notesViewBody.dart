import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nat/cubits/note_cubit/note_cubit.dart';
import 'package:nat/widgets/appBarview.dart';
import 'package:nat/widgets/notesListViewItem.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).FetchNoteModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            nameAppBar: 'NoTa',
            icon: Icons.search_rounded,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
