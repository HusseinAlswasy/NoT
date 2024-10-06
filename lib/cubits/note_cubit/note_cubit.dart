import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nat/cubits/note_cubit/note_state.dart';
import 'package:nat/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  FetchNoteModel() async {
    var noteBox = Hive.box<NoteModel>('note box');
    notes = noteBox.values.toList();
    emit(NoteSuccess(notes!));
  }
}
