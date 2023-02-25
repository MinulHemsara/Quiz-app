import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultphare {
    String resulttext = 'you did it';
    if (resultscore <= 50) {
      resulttext = 'You are win';
    } else if (resultscore <= 12) {
      resulttext = 'Good';
    } else {
      resulttext = 'You are bad';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(resultphare,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 36, color: Colors.red),
            textAlign: TextAlign.center),
        ElevatedButton(child: Text('Restart Quiz'), onPressed: resetHandler)
      ]),
    );
  }
}
