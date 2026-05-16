import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context); // يقفل الصفحة فوراً عند النجاح
        }
        if (state is AddNoteFailure) {
          debugPrint('Failed to add note: ${state.errorMessage}');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          // ربط حالة التحميل بـ الـ HUD الـ الكبيرة
          inAsyncCall: state is AddNoteLoading,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(
                context,
              ).viewInsets.bottom, // لرفع الصفحة مع الكيبورد
            ),
            child: const SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      },
    );
  }
}
