part of 'add_note_cubit.dart';

sealed class AddNoteState extends Equatable {
  const AddNoteState();

  @override
  List<Object> get props => [];
}

final class AddNoteInitial extends AddNoteState {}
<<<<<<< HEAD

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  const AddNoteFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage]; // أضفنا دي هنا عشان الـ Equatable يحس بتغيير رسالة الخطأ
}
=======
>>>>>>> 10f8cd8491f4e93b10696d0b2c8d7db871df8bc3
