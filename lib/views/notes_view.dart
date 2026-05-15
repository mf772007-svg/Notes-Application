import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/add_note_button_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xFF383838),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF62FCD7),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return BlocProvider(
                  create: (context) => AddNoteCubit(),
                  child: const AddNoteBottomSheet(),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ), // قفلة الـ FloatingActionButton
        body: const NotesViewBody(), // الـ body مكانه هنا تابع للـ Scaffold
      ),
    ); // قفلة الـ Scaffold
  }
}

// تعديل بسيط في اسم الكلاس عشان يبقى أوضح (Sheet بدل Botton)
