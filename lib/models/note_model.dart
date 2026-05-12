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
  final DateTime dateTime;
  @HiveField(3)
  final int colorIndex;

  NoteModel({
    required this.title,
    required this.content,
    required this.dateTime,
    required this.colorIndex,
  });
}
