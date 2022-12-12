import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
      //print(questionIndex);
    });

    print(questionIndex);
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
                Text(
                  questions[questionIndex],
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
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
