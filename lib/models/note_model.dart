import 'package:hive/hive.dart';
part 'note_model.g.dart'; // بنضيف هذا السطر عشان نقدر نستخدم الـ Hive Generator

@HiveType(typeId: 0)
// بنحدد نوع الـ Hive Object عشان نقدر نخزنه
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
