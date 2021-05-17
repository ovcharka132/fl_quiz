import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String _answerText;
  final Function _pressHandler;

  AnswerButton(this._answerText, this._pressHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        color: Colors.blue.shade200,
        onPressed: _pressHandler,
      ),
    );
  }
}
