import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nat/cubits/note_cubit/note_state.dart';
import 'package:nat/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  FetchNoteModel() async {
    try {
      var noteBox = Hive.box<NoteModel>('note box');

      emit(NoteSuccess(notes: noteBox.values.toList()));
    } catch (e) {
      emit(NoteFailuer(e.toString()));
    }
  }
}
