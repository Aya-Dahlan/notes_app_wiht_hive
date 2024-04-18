import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/views/widgets/add_bottom_sheet.dart';
import 'package:notes_app_with_hive/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        
        
        
        
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddBottomSheet();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)));
        },
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
