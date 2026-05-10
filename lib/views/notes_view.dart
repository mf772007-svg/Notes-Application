import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF383838),
      child: Column(children: const [SizedBox(height: 20), CustomAppBar()]),
    );
  }
}
