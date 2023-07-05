import 'package:noteapp/Models/note_model.dart';

abstract class NotesState {
  get notes => null;
}

class NotesIntial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  @override
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
