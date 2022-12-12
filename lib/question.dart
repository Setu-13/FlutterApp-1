import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 31,
              color: Colors.indigo.shade300,
              backgroundColor: Color.fromARGB(80, 149, 66, 204)),
        ));
  }
}
