import 'package:flutter/material.dart';
import 'package:flutter_demo/animation/tween_animation.dart';

class AnimationScr extends StatefulWidget {
  @override
  _AnimationScrState createState() => _AnimationScrState();
}

class _AnimationScrState extends State<AnimationScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: ListView(
        children: <Widget>[
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => TweenAnimationScr()));
            },
            icon: Icon(Icons.ac_unit),
            label: Text("Tween animation"),
          ),
        ],
      ),
    );
  }
}
