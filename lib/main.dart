import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, // عشان الـ Dark Mode
        fontFamily: 'Poppins',
      ),
      home: const NotesView(), // الصفحة اللي بتبدأ الأول
    );
  }
}
