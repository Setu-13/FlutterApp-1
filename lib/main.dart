import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

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

  @override
  Widget build(BuildContext context) {
    var questions = [
      "One",
      "Twodeef",
      "hewool",
      "sfds",
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
                  questions[_questionIndex],
                ),
                ElevatedButton(
                  onPressed: _answerQuestion,
                  child: Text("Water"),
                ),
                ElevatedButton(
                  onPressed: () => print("button pressed"),
                  child: Text("Weight"),
                ),
                ElevatedButton(
                  onPressed: () => {
                    print("button bla bla pressed"),
                    print("bla labbu"),
                  },
                  child: Text("Fill"),
                ),
              ],
            ))

        //home: Text('\n\nHello!\n\n\n\n Setu Gupta'),
        );
  }
}
