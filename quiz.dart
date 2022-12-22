import 'package:flutter/material.dart';
import 'package:second_app/questions.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
       {required this.questionIndex, 
       required  this.answerQuestion,
        required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
