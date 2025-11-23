import 'package:quiz_app/models/question_model.dart';

import '../assets.dart';

class Quizmanager {
  final List<QuestionModel> _questions = [
    QuestionModel(
      title: "What is the capital of France?",
      options: ["New York", "London", "Paris", "Berlin"],
      questionNumber: "1",
      image: Assets.q1,
    ),
    QuestionModel(
      title: "What is the capital of Italy?",
      options: ["Cairo", "Chicago", "Rome", "Berlin"],
      questionNumber: "2",
      image: Assets.q2,
    ),
    QuestionModel(
      title: "What is the capital of Germany?",
      options: ["Hong Kong", "London", "Berlin", "Rome"],
      questionNumber: "3",
      image: Assets.q3,
    ),
    QuestionModel(
      title: "What is the capital of Spain?",
      options: ["New York", "London", "Madrid", "Rome"],
      questionNumber: "4",
      image: Assets.q4,
    ),
  ];

  List<QuestionModel> get questions => _questions;

  void updateSelectedAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }
}
