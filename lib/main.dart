import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';
import 'animation/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home:
//        MyHomePage(title: appTitle),
          AnimationScr(),
    );
  }
}
