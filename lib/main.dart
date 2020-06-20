import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      "questionText": "What's your favourite color?",
      "answer": ["Red", "Green", "Blue", "Black"],
    },
    {
      "questionText": "What's your favourite animal?",
      "answer": ["Lion", "Tiger", "Jaguar", "Chicken"],
    },
    {
      "questionText": "What's your favourite sport?",
      "answer": ["Football", "Cricket", "Tennis", "Fortnite"],
    }
  ];

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var _questionIndex = 0;

  get questionIndex => _questionIndex;

  set questionIndex(questionIndex) {
    _questionIndex = questionIndex;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]["questionText"]),
            ...(questions[_questionIndex]["answer"] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
