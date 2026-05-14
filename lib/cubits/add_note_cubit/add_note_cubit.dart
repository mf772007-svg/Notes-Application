<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/constans.dart';
import 'package:equatable/equatable.dart';

// الربط بملف الـ States
=======
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

>>>>>>> 10f8cd8491f4e93b10696d0b2c8d7db871df8bc3
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
<<<<<<< HEAD

  // دالة إضافة الملاحظة
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      // 1. احفظ البيانات الأول واستنى لما تخلص (await)
      await notesBox.add(note);

      // 2. بعد ما تخلص بنجاح، ابعت حالة النجاح للـ UI
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
=======
>>>>>>> 10f8cd8491f4e93b10696d0b2c8d7db871df8bc3
}
