import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Notes App',
      home: const NotesView(),
    );
  }
}
