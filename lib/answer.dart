import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback setHandler;
  final String buttonName;

  Answer(this.setHandler, this.buttonName);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          child: Text(buttonName),
          onPressed: setHandler,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.deepPurpleAccent.shade400),
          )),
    );
  }
}
