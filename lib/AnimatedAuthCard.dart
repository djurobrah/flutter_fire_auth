import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AnimatedAuthCard extends AnimatedWidget {
  static final _heightTween = Tween<double>(begin: 0, end: 300);
  final Widget child;

  AnimatedAuthCard({Key key, Animation<double> animation, this.child})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      height: _heightTween.evaluate(animation),
      child: Card(child: child),
    );
  }
}
