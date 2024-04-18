import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_with_hive/constants.dart';
import 'package:notes_app_with_hive/views/widgets/custom_button.dart';
import 'package:notes_app_with_hive/views/widgets/custom_textLfield.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
