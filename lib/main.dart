import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/views/notes_view.dart';
import 'package:notes_app_with_hive/views/simple_bloc_observer.dart';
void main() async{
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData
      (brightness: Brightness.dark, textTheme: GoogleFonts.poppinsTextTheme()),
      
      home: NotesView(),
    );
  }
}
