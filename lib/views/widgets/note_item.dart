import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widgets/constans.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.gradientModel,
    required this.index,
    required this.note,
  });

  final GradientColorModel gradientModel;
  final int index;
  final NoteModel note; // إضافة المتغير NoteModel لتمرير البيانات الحقيقية

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'note_$index',
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteViewBody(
                  index: index,
                  title: note.title,
                  content: note.content,
                  date: note.date,
                );
              },
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: gradientModel.startColor.withValues(alpha: 0.4),
                blurRadius: 20,
                spreadRadius: -2,
                offset: const Offset(0, 10),
              ),
            ],
            gradient: LinearGradient(
              colors: [gradientModel.startColor, gradientModel.endColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          // الـ Material الشفاف هنا هو اللي بيمنع الـ Error وقت الطيران
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title, // عرض العنوان الحقيقي من NoteModel
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none, // تأكيد عشان الإيرور
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      note.content, // عرض المحتوى الحقيقي من NoteModel
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 0.5),
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete(); // حذف الملاحظة من Hive مباشرةً
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    note.date,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.5),
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
