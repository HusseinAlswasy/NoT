import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nat/cubits/note_cubit/note_cubit.dart';
import 'package:nat/cubits/note_cubit/note_state.dart';
import 'package:nat/models/note_model.dart';
import 'package:nat/widgets/noteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
                note: notes[item],
              ),
            );
          },
        );
      },
    );
  }
}
