import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
    required this.index,
    required this.title,
    required this.content,

    required this.date,
  });

  final int index;
  final String title;
  final String content;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'note_$index',
      child: Scaffold(
        backgroundColor: const Color(0xff1A1A1A), // لون الخلفية الداكنة
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                CustomAppBar(
                  title: 'Edit Note',
                  icon: Icons.check,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 32),
                CustomTextField(hint: title),
                const SizedBox(height: 16),
                CustomTextField(hint: content, maxLines: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
