import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      //print(questionIndex);
    });

    print(_questionIndex);
    //print("fsa");
  }

  ///
  void _answerQuestion_decr() {
    setState(() {
      _questionIndex--;
      //print(questionIndex);
    });

    print(_questionIndex);
    //print("fsa");
  }

  ///
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is you favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What is you favorite sex Position?',
        'answers': ['Satanding Misnnory', 'Missinory', 'Doggy', 'Oral', 'Anal'],
      },
      {
        'questionText': 'What is you favorite Porn Actress?',
        'answers': ['sunny Lone', 'Shopia Leone', 'Leah Goti', 'Little Caprie'],
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Fist\n Application"),
            ),
            body: Column(
              children: [
                // Text(
                //   questions[_questionIndex],
                // ),
                Question(
                  questions[_questionIndex]['questionText'],
                ),

                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()

                //Answer(_answerQuestion, "Plus"), //Button 1
                //Answer(_answerQuestion_decr, "Minus"), //Button 2
                // ElevatedButton(
                //   onPressed: () => print("button pressed"),
                //   child: Text("I am Fake"),
                // ),
              ],
            ))

        //home: Text('\n\nHello!\n\n\n\n Setu Gupta'),
        );
  }
}
