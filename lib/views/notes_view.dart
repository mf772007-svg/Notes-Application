import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // السكافولد جواه Material بشكل تلقائي، وده اللي الـ ListTile محتاجاه
      backgroundColor: Color(0xFF383838),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
