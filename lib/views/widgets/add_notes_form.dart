
import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/widgets/custom_button.dart';
import 'package:notes_app_with_hive/views/widgets/custom_textLfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
           CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();

              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },

            
           ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
