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

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'White', 'Red', 'Blue', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': ['Dog', 'Cat', 'Rebbit', 'Mouse'],
    },
    {
      'questionText': 'What\'s your favorite Season?',
      'answers': ['Autumn', 'Winter', 'Spring', 'Summer'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length - 1) _questionIndex += 1;
    });
  }

  Widget build(BuildContext context) {
    var question = _questions[_questionIndex];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Title'),
        ),
        body: Column(
          children: [
            Question(question['questionText']),
            ...(question['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }
}
