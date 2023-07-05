import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/note_cubit/Notes_cubit.dart';
import 'package:noteapp/note_cubit/Notes_state.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount: state is NotesSuccess ? state.notes.length : 0,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(
                  note: state.notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
