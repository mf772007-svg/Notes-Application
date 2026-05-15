import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/constans.dart';

void main() async {
  await Hive.initFlutter(); // تهيئة Hive قبل تشغيل التطبيق

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  // فتح صندوق لتخزين الملاحظات (ممكن تغير الاسم لو حبيت)

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
