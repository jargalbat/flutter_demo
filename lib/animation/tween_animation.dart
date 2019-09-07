import 'package:flutter/material.dart';

class TweenAnimationScr extends StatefulWidget {
  @override
  _TweenAnimationScrState createState() => _TweenAnimationScrState();
}

class _TweenAnimationScrState extends State<TweenAnimationScr>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  double maxHeight = 300;
  Duration animateDuration = Duration(seconds: 2);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: animateDuration, vsync: this);
    animation = Tween<double>(begin: 0, end: maxHeight).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Tween animation")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('duration: ${animateDuration.inSeconds}'),
            Text(' height: ${animation.value.round()}'),
            Container(
              height: maxHeight,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: animation.value,
                  width: animation.value,
                  child: FlutterLogo(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
