import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/widgets/custom_app_bar.dart';
import 'package:notes_app_with_hive/views/widgets/custom_textLfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ), 
          SizedBox(
            height: 50,
          ), 
          CustomTextField(hint: 'Title'), 
          SizedBox(
            height: 16,
          ), 
          CustomTextField(hint: 'Content', maxLines: 5,)
        ],
      ),
    );
  }
}
