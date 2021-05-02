import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onPressed;
  Answer(this.text, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }
}
