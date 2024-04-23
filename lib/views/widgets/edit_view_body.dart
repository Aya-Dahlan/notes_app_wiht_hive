import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/views/widgets/colors_list_view.dart';
import 'package:notes_app_with_hive/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_hive/views/widgets/custom_textLfield.dart';
import 'package:notes_app_with_hive/views/widgets/edit_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle=content?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.subTitle, 
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ), 
           EditNoteColorsList(note: widget.note,),
        ],
      ),  
    );
  }
}
