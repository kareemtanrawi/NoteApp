import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/Custom_app_Par.dart';
import 'package:noteapp/Widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppPar(
            Title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
