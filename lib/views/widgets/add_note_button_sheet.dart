import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(
              0xff1A1A1A,
            ).withValues(alpha: 0.8), // شفافية احترافية
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 32),
                CustomTextField(hint: 'Title'),
                SizedBox(height: 16),
                CustomTextField(hint: 'Content', maxLines: 5),
                SizedBox(height: 32),
                CustomButton(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
