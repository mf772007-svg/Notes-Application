import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This field can\'t be empty';
        } else {
          return null;
        }
      },
      // --- إضافة هذا السطر لتوضيح لون كلام المستخدم ---
      style: const TextStyle(color: Colors.white, fontSize: 18),

      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        // لون النص التوضيحي (Hint) يفضل يكون رمادي عشان يفرق عن الكلام اللي بيكتبه المستخدم
        hintStyle: const TextStyle(color: Colors.grey),

        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white.withValues(alpha: 0.5),
      ),
    );
  }
}
