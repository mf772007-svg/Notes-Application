import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF383838),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CustomTextField(hint: 'Title'),
            const SizedBox(height: 20),
            const CustomTextField(hint: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
