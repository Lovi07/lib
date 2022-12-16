import 'package:flutter/material.dart';
import 'package:second_app/questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Myappstate();
  }
}

class Myappstate extends State<MyApp> {
  var questionindex = 0;
  void answerQuestions() {
    setState(() {
      questionindex += 1;
    });

    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["what\'s ur fav color", "what\'s ur fav animal"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second app'),
        ),
        body: Column(children: [
          Question(questions[questionindex]),
          
          ElevatedButton(
             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text("Answer 2"),
            onPressed: () => print("Answe 2 chosen"),
          ),
          ElevatedButton(
             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text("Answer 3"),
            onPressed: () => print("Answe 3 chosen"),
          ),
        ]),
      ),
    );
  }
}
