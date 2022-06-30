import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPharse {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awwesome innocent !';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable !';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange ?!';
    } else
      resultText = 'You are so bad !';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPharse,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler, 
          child: Text('Restart Quize !'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
