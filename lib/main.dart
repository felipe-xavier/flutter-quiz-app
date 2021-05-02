import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
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
            ElevatedButton(
              child: Text(answers[0]),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text(answers[1]),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text(answers[2]),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
