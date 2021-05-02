import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function onAnswer;
  Quiz({
    @required this.question,
    @required this.answers,
    @required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers.map((answer) => Answer(answer, onAnswer)).toList(),
      ],
    );
  }
}
