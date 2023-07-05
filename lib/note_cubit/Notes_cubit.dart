import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/note_cubit/Notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIntial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var NotesBox = Hive.box<NoteModel>(kNoteBox);
    notes = NotesBox.values.toList();
  }
}
