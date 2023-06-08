import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> myColor = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amber,
    ];

    final List<Widget> myList = List.generate(
      100,
      ((index) => Text(
            "${index + 1}".toString(),
            style: TextStyle(
              fontSize: 20 + double.parse(index.toString()),
            ),
          )),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
