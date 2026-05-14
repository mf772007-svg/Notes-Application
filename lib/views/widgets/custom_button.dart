import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap; // المتغير اللي هيشيل الأكشن لما ندوس

  final bool isLoading; // متغير جديد عشان نتحكم في حالة التحميل
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // ربط الأكشن بالزرار
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFF62FCD7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: const CircularProgressIndicator(color: Colors.black),
                )
              : const Text(
                  'Add Note',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
