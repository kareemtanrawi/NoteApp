import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/constant.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteIntial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      // ignore: non_constant_identifier_names
      var NoteBox = Hive.box<NoteModel>(kNoteBox);
      await NoteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailed(e.toString()));
    }
  }
}
