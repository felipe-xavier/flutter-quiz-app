import 'package:flutter/material.dart';
import 'package:quizz_app/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
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

  void _onAnswerQuestion() {
    setState(() => _questionIndex += 1);
  }

  Map<String, Object> getQuestion() {
    if (_questionIndex < _questions.length)
      return _questions[_questionIndex];
    else {
      return null;
    }
  }

  Widget build(BuildContext context) {
    var question = getQuestion();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Title'),
        ),
        body: question != null
            ? Quiz(
                question: question['questionText'],
                answers: question['answers'],
                onAnswer: _onAnswerQuestion,
              )
            : Result(),
      ),
    );
  }
}
