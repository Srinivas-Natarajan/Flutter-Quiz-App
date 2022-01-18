import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "Thank you for taking the Quiz!!";
    if (resultScore <= 8) {
      resultText = "You are Awesome";
    } else if (resultScore <= 14) {
      resultText = "You are likeable";
    } else if (resultScore <= 18) {
      resultText = "You are Weird";
    } else {
      resultText = "Nightmare";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
          )
        ],
      ),
    );
  }
}
