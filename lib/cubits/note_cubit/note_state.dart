import 'package:nat/models/note_model.dart';

abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

class NoteFailuer extends NoteState {
  final String? error;

  NoteFailuer(String string, {this.error});
}
