import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  // بنضيف المتغيرات دي عشان نتحكم في الـ AppBar من بره
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // شلنا الـ const عشان القيم بقت متغيرة
        const SizedBox(width: 10, height: 77),
        Text(
          title, // استخدام المتغير بدل النص الثابت
          style: const TextStyle(
            fontSize: 28, // كبرنا الخط شوية عشان يبقى أوضح
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Spacer(),

        // بنمرر الأيقونة والأكشن للـ CustomSearchIcon بتاعك
        CustomSearchIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
