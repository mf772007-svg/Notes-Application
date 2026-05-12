import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  // بنضيف الـ icon والـ onPressed كـ Parameters
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});

  final IconData icon; // المتغير اللي هيشيل شكل الأيقونة
  final void Function()? onPressed; // المتغير اللي هيشيل الأكشن لما ندوس

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46, // كبرته شوية عشان يكون مريح للضغط
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed, // ربط الأكشن بالزرار
          icon: Icon(
            icon, // استخدام الأيقونة الممررة
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}
