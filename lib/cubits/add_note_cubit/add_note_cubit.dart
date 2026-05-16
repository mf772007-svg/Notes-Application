import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/constans.dart';
import 'package:equatable/equatable.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      // بنفتح الصندوق هنا بشكل أضمن عشان نمنع الـ Freeze
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      debugPrint("جاري إضافة النوت إلى الـ Box...");
      await notesBox.add(note);

      debugPrint("تم الحفظ في الـ Hive بنجاح!");
      emit(AddNoteSuccess());
    } catch (e) {
      debugPrint("حصل خطأ أثناء الحفظ: ${e.toString()}");
      emit(AddNoteFailure(e.toString()));
    }
  }
}
