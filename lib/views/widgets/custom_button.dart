
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_with_hive/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      height: 55,
      child: Center(
        child: Text(
          'Add',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
