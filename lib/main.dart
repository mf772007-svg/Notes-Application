import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/constans.dart';

void main() async {
  await Hive.initFlutter(); // تهيئة Hive قبل تشغيل التطبيق
  await Hive.openBox(
    kNotesBox,
  ); // فتح صندوق لتخزين الملاحظات (ممكن تغير الاسم لو حبيت)
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
