import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errorMessage}');
              print('Success');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context); // اقفل الصفحة لما تنجح
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              // هنا التعديل: بنربط حالة التحميل بالـ State
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
