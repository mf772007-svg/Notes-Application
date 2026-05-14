import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/constans.dart';

void main() async {
  await Hive.initFlutter(); // تهيئة Hive قبل تشغيل التطبيق

  await Hive.openBox(
    kNotesBox,
  ); // فتح صندوق لتخزين الملاحظات (ممكن تغير الاسم لو حبيت)
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark, // عشان الـ Dark Mode
          fontFamily: 'Poppins',
        ),
        home: const NotesView(), // الصفحة اللي بتبدأ الأول
      ),
    );
  }
}
