import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 10, height: 77),
        Text(
          'Notes',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Spacer(flex: 1),
        CustomSearchIcon(),
      ],
    );
  }
}
