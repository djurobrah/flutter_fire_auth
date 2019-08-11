import 'package:flutter/material.dart';

class LogInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 50),
      children: <Widget>[
        Text("Press button to Login"),
        RaisedButton(
          child: Text("Log in"),
          onPressed: () => Navigator.pushNamed(context, 'homePage'),
        ),
        RaisedButton(
          child: Text("Switch"),
          onPressed: () => print('bla'),
        ),
      ],
    );
  }
}
