import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _buttonPressed(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetButtonPressed() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  int _questionIndex = 0;
  int _totalScore = 0;

  var _questions = [
    {
      'question': 'What is your favorite color',
      'answer': [
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 3},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'question': 'What is your favorite animal',
      'answer': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Rat', 'score': 2},
      ],
    },
    {
      'question': 'What is your favorite OS',
      'answer': [
        {'text': 'Windows', 'score': 100},
        {'text': 'Ubuntu', 'score': 100},
        {'text': 'Arch', 'score': 100},
        {'text': 'DOS', 'score': 100},
        {'text': 'RTOS', 'score': 100},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              buttonPressed: _buttonPressed,
            )
          : Result(
              _totalScore,
              _resetButtonPressed,
            ),
    ));
  }
}
