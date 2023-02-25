import 'package:flutter/material.dart';
import './quiz.dart';
import './answer.dart';
import './qiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final quiz = const [
    {
      'quizText': 'what is your favourite colour ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 6},
      ]
    },
    {
      'quizText': 'what is your favourite food',
      'answers': [
        {'text': 'Rice', 'score': 12},
        {'text': 'Pizza', 'score': 2},
        {'text': 'Burger', 'score': 11},
      ]
    },
    {
      'quizText': 'what is your favourite car',
      'answers': [
        {'text': 'Toyota', 'score': 12},
        {'text': 'Benz', 'score': 12},
        {'text': 'BMW', 'score': 12},
      ]
    },
  ];

  var quizindex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      var questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuiz(int score) {
    // var aBool = true;
    // var fBool = false;

    totalScore = totalScore += score;

    setState(() {
      quizindex = quizindex + 1;
    });

    print(quizindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello world')),
        body: quizindex < quiz.length
            ? qiz(answerQuiz: answerQuiz, quizindex: quizindex, quiz: quiz)
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
