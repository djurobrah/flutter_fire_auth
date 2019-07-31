import 'package:flutter/material.dart';
import 'package:flutter_fire_auth/LogInWidget.dart';
import 'package:flutter_fire_auth/RegisterWidget.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  Widget _displayedWidget = LogInWidget();

  void _changeWidget() {
    setState(() {
      _displayedWidget.toStringShort() == LogInWidget().toStringShort()
          ? _displayedWidget = RegisterWidget()
          : _displayedWidget = LogInWidget();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Authenticate'),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 450),
              child: _displayedWidget,
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(child: child, scale: animation),
              reverseDuration: const Duration(milliseconds: 450),
            ),
            Flexible(child: Container(),),
            RaisedButton(
              child: Text("Switch"),
              onPressed: () => _changeWidget(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
