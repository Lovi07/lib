import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text("Answer 1"),
            onPressed: answerQuestions, //here it should be noted that no
            //parentesis will come
          ),
    );
  }
}