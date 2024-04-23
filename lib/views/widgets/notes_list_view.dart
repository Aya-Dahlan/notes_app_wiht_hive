import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/views/widgets/custom_note_icon.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {


        List<NoteModel>  notes=BlocProvider.of<NotesCubitCubit>(context).notes!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount:notes.length ,
          itemBuilder: (context, index) {
            return  Padding(
              padding:const  EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(note: notes[index],),
            );
          },
        );
      },
    );
  }
}
