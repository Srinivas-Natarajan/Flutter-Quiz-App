// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What is your favorite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 5},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'What is your favorite subject?',
      'answers': [
        {'text': 'DSA', 'score': 2},
        {'text': 'TOC', 'score': 10},
        {'text': 'DBMS', 'score': 6},
        {'text': 'OS', 'score': 5}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Question Index, Score: ${questionIndex}, ${_totalScore}");
    if (questionIndex < _questions.length) {
      print("More Questions");
    }
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.orange,
        ),
        body: (questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
