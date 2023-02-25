import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'quiz.dart';

class qiz extends StatelessWidget {
  final List<Map<String, Object>> quiz;
  final Function answerQuiz;
  final int quizindex;

  qiz(
      {@required this.quiz,
      @required this.answerQuiz,
      @required this.quizindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quiz(
          quiz[quizindex]['quizText'] as String,
        ),
        ...(quiz[quizindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuiz(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
