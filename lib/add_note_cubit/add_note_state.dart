abstract class AddNoteState {}

class AddNoteIntial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailed extends AddNoteState {
  final String errMessage;

  AddNoteFailed(this.errMessage);
}
