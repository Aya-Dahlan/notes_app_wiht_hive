import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_with_hive/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint , this.maxLines=1, this.onSaved});

  final  String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ??true){
          return 'Field is required';
          
        }
        else{
          return null;
        }
      },
    
      
      cursorColor:kPrimaryColor ,
      
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.white,
        
        
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color:kPrimaryColor)

      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:BorderSide(color:color?? Colors.white));
  }
}
