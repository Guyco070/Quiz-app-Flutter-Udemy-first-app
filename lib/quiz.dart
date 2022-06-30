import 'package:flutter/material.dart';
import 'package:quize_app/answer.dart';
import 'package:quize_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(() => answerQuestion(answerText['score']), answerText['text'] as String);
        })
      ],
    );
  }
}
