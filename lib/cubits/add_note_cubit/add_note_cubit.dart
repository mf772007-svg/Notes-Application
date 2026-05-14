import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:equatable/equatable.dart'; // حطها هنا
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/constans.dart';

part 'add_note_state.dart'; // ده الربط بالملف التاني

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading()); // دي اللي بتشغل صفحة التحميل
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess()); // لو نسيت دي.. الزرار مش هيعمل حاجة بعد الدوسة
    } catch (e) {
      emit(
        AddNoteFailure(e.toString()),
      ); // لو نسيت دي.. مش هتعرف إن فيه Error أصلاً
    }
  }
}
