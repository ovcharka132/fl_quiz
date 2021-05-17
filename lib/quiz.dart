import 'package:flutter/material.dart';

import 'question.dart';
import 'answerButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function buttonPressed;
  final int questionIndex;

  Quiz({this.questions, this.questionIndex, this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(
            answer['text'],
            () => buttonPressed(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
