import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function onReset;

  Result(this.totalScore, this.onReset);

  String get getSore {
    return 'You got ' + totalScore.toString() + ' points!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getSore,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(onPressed: onReset, child: Text('Redo the test '))
        ],
      ),
    );
  }
}
