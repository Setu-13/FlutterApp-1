import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback setHandler;
  //final String buttonName;
  final String answerTest;

  Answer(this.setHandler, this.answerTest);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          child: Text(answerTest),
          onPressed: setHandler,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(61, 177, 205, 214)),
          )),
    );
  }
}
