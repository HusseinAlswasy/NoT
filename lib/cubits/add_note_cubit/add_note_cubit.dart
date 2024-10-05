import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nat/cubits/add_note_cubit/add_note_state.dart';
import 'package:nat/models/note_model.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    var noteBox = Hive.box('note box');
    noteBox.add(note);
  }
}
