import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/notes_view.dart';
void main() {
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
      (brightness: Brightness.dark),
      
      home: NotesView(),
    );
  }
}
