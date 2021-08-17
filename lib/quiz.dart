import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int question_index;
  final Function answerQuestion;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.question_index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[question_index]['questionText']),
        // ... merges lists
        ...(questions[question_index]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
         // return Answers( () => answerQuestion(answer['Score']), answer['Text']);
         return Answers( ()=> answerQuestion(answer['Score']) , answer['Text']);
        }).toList(),
      ],
    );
  }
}
