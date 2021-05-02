import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 2) _questionIndex += 1;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'Question 1',
      'Question 2',
      'Question 3',
    ];

    var answers = [
      'Answer 1',
      'Answer 2',
      'Answer 3',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Title'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(answers[0], _answerQuestion),
            Answer(answers[1], _answerQuestion),
            Answer(answers[2], _answerQuestion),
          ],
        ),
      ),
    );
  }
}
