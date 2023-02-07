import 'package:flutter/material.dart';
import './quiz.dart';
import './answer.dart';

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
        'Black',
        'Green',
        'Red',
      ]
    },
    {
      'quizText': 'what is your favourite food',
      'answers': [
        'Rice',
        'Pizza',
        'Burger',
      ]
    },
    {
      'quizText': 'what is your favourite car',
      'answers': [
        'Toyota',
        'Bena',
        'BMW',
      ]
    },
  ];

  var quizindex = 0;

  void answerQuiz() {
    var aBool = true;
    var fBool = false;
    if (quizindex < quiz.length) {
      print("NEXT");
    }
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
            ? Column(
                children: [
                  Quiz(
                    quiz[quizindex]['quizText'],
                  ),
                  ...(quiz[quizindex]['answers'] as List<String>).map((answer) {
                    return Answer(answerQuiz, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'You did it!',
                  style: TextStyle(backgroundColor: Colors.grey),
                ),
              ),
      ),
    );
  }
}
