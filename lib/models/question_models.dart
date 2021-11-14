// ignore_for_file: import_of_legacy_library_into_null_safe

import "package:equatable/equatable.dart";

class Question extends Equatable {
  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> answers;

  const Question({
    required this.category,
    required this.difficulty,
    required this.question,
    required this.correctAnswer,
    required this.answers,
  });

  @override
  List<Object> get props => [
        category,
        difficulty,
        question,
        correctAnswer,
        answers,
      ]; 
}
