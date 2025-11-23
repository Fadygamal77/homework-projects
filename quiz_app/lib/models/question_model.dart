import 'package:flutter/material.dart';

class QuestionModel {
  final String title;
  final String questionNumber;
  final String image;
  final List<String> options;
  String selectedAnswer = '';

  QuestionModel({
    required this.title,
    required this.image,
    required this.options,
    required this.questionNumber,
  });
}
