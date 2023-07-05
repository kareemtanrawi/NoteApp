import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/simple_bloc_opserver.dart';
import 'package:noteapp/views/notes_view.dart';
import 'dart:js';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocOpserver();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
