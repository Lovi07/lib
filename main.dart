import 'package:flutter/material.dart';
import 'package:second_app/quiz.dart';
import 'package:second_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return Myappstate();
  }
}

class Myappstate extends State<MyApp> {
  final _question = [
    {
      'questionText': "what's ur fav color?",
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 7},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': "what's ur fav animal?",
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 9},
        {'text': 'elephant', 'score': 10},
        {'text': 'giraffe', 'score': 5}
      ],
    }
  ];

  var _questionindex = 0;
  var _totalscore = 0;
  void _answerQuestion() {

    setState(() {
      _questionindex += 1;
    });

    print(_questionindex);
    if (_questionindex < _question.length) {
      print(" We have more questions!");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Second app'),
          ),
          body: _questionindex < _question.length
              ? Quiz(
                  question: _question,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionindex)
              : Result()),
    );
  }
}
