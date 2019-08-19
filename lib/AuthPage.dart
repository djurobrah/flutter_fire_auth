import 'package:flutter/material.dart';
import 'package:flutter_fire_auth/AnimatedAuthCard.dart';

import 'package:flutter_fire_auth/LogInWidget.dart';
import 'package:flutter_fire_auth/RegisterWidget.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  Widget _displayedWidget = LogInWidget();

  void _changeWidget() {
    setState(() {
      _displayedWidget.toStringShort() == LogInWidget().toStringShort()
          ? _displayedWidget = RegisterWidget()
          : _displayedWidget = LogInWidget();
    });
  }

  Animation<double> animation;
  AnimationController controller;

  void _setupAnimation() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    animation = controller.drive(
      CurveTween(curve: Curves.easeOutBack),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('completed');
        }
        if (status == AnimationStatus.dismissed) {
          print('dismissed');
          controller.forward();
          _changeWidget();
        }
      });
    controller.forward();
  }

  @override
  void initState() {
    super.initState();
    _setupAnimation();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Authenticate'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Container()),
          Center(
            child: AnimatedAuthCard(
              animation: animation,
              child: _displayedWidget,
            ),
          ),
          Expanded(child: Container()),
          RaisedButton(
            child: Text("Switch"),
            onPressed: () => controller.reverse(),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
