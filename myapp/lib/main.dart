import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  // Default Background Color.
  Color colorCode = Colors.lightBlue;
  final Random random = Random();

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode,
      appBar: AppBar(title: Text('Generate Random Background Color')),
      body: GestureDetector(
          onTap: () => generateRandomColor(),
          behavior: HitTestBehavior.opaque,
          child: Container(
            child: Text('Hey there'),
            alignment: Alignment.center,
          )),
    );
  }
}
