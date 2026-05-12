import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/constans.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        // BouncingScrollPhysics بتخلي الـ Scroll يرتد لما يوصل للنهاية (زي iOS)
        physics: const BouncingScrollPhysics(),
        itemCount: 16,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ), // مسافة كافية عشان الـ Shadow (التوهج) يظهر بوضوح
            child: NoteItem(
              // بنمرر الـ index الفعلي عشان الـ Hero Tag يكون فريد
              index: index,
              gradientModel: kGradients[index % kGradients.length],
            ),
          );
        },
      ),
    );
  }
}
