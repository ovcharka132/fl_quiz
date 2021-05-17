import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _result;
  final Function _resetButtonPressed;

  Result(this._result, this._resetButtonPressed);

  String get _resultPhrase {
    if (_result == 110) {
      return 'Pass';
    }
    return 'Fail';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Your score is $_result\n$_resultPhrase',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            child: Text("Restart"),
            onPressed: _resetButtonPressed,
          ),
        ],
      ),
    );
  }
}
