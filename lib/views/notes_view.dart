import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_button_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383838),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF62FCD7),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet(); // استدعينا الكلاس اللي تحت هنا
            },
          );
        },
        child: const Icon(Icons.add),
      ), // قفلة الـ FloatingActionButton
      body: const NotesViewBody(), // الـ body مكانه هنا تابع للـ Scaffold
    ); // قفلة الـ Scaffold
  }
}

// تعديل بسيط في اسم الكلاس عشان يبقى أوضح (Sheet بدل Botton)
