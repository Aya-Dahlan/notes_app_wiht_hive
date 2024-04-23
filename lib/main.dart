
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/views/notes_view.dart';
import 'package:notes_app_with_hive/views/simple_bloc_observer.dart';

void main() async {
  

  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  print('Registering NoteModelAdapter...');
Hive.registerAdapter(NoteModelAdapter());
print('Opening Hive box...');
await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NotesCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: GoogleFonts.poppinsTextTheme()),
        home: NotesView(),
      ),
    );
  }
}
