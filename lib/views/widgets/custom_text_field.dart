import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,

        border: buildBorder(), // هنا أنت مش باعت لون (تمام)
        enabledBorder: buildBorder(), // هنا برضه مش باعت لون (تمام)
        focusedBorder: buildBorder(KPrimaryColor), // هنا باعت لون (تمام)
      ),
    );
  }

  // التعديل هنا: ضيفنا "Color?" وعلامة الاستفهام معناها إن اللون اختياري
  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color:
            color ??
            Colors.white.withOpacity(
              0.5,
            ), // لو ما جالك لون، استخدم اللون الافتراضي (تمام
      ),
    );
  }
}
