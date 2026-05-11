import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Padding داخلي عشان العناصر ما تلمسش حدود الـ Container
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      // Margin خارجي عشان لو فيه كذا نوت تحت بعض ما يلزقوش في بعض
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFFFCC80), // لون هادي ومريح للعين (Light Orange)
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            // نزود مسافة بين العنوان والوصف
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Make your notes with Farag',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          // التاريخ محتاج padding من اليمين شوية عشان ما يلزقش في الحافة
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May 10, 2026',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
