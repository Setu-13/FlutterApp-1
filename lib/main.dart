import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Helllo"),
            ),
            body: Column(
              children: [
                Text("Buttons"),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Water"),
                ),
                ElevatedButton(onPressed: null, child: Text("Weight"))
              ],
            ))

        //home: Text('\n\nHello!\n\n\n\n Setu Gupta'),
        );
  }
}
