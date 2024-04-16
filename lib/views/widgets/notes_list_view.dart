
import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/widgets/custom_note_icon.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,


      itemBuilder: (context, index){
        return const  Padding(
          padding:  EdgeInsets.symmetric(vertical: 4),
          child:   NoteItem(),
        );
      },
    );
  }
}
