// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
