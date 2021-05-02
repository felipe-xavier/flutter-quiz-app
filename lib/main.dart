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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 3},
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 4},
        {'text': 'Yellow', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 10},
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Mouse', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favorite Season?',
      'answers': [
        {'text': 'Winter', 'score': 10},
        {'text': 'Spring', 'score': 4},
        {'text': 'Summer', 'score': 1},
        {'text': 'Autumn', 'score': 5},
      ],
    },
  ];

  void _resetState() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _onAnswerQuestion(int score) {
    _totalScore += score;
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
          title: Center(child: Text('My Personality Quiz')),
        ),
        body: question != null
            ? Quiz(
                question: question['questionText'],
                answers: question['answers'],
                onAnswer: _onAnswerQuestion,
              )
            : Result(_totalScore, _resetState),
      ),
    );
  }
}
