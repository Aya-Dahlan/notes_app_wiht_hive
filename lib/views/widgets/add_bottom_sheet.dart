import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app_with_hive/views/widgets/add_notes_form.dart';
import 'package:notes_app_with_hive/views/widgets/custom_button.dart';
import 'package:notes_app_with_hive/views/widgets/custom_textLfield.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if(state is AddNotesFailure){
              print('Faild ${state.errorMessage}');
            }
            if(state is AddNotesSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
