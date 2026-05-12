import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // جعلنا الخلفية داكنة كما طلبت
      color: const Color(0xff1A1A1A),
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // --- استخدام الـ CustomAppBar الذي شرحناه سابقاً ---
              CustomAppBar(
                title: 'Edit Note',
                icon: Icons.check,
                onPressed: () {
                  // منطق الحفظ هنا
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 32),

              // --- استخدام الـ CustomTextField للعنوان ---
              const CustomTextField(hint: 'Title'),

              const SizedBox(height: 16),

              // --- استخدام الـ CustomTextField للمحتوى ---
              const CustomTextField(hint: 'Content', maxLines: 20),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
