import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 50),
      children: <Widget>[
        Text("Press button to Register"),
        RaisedButton(
          child: Text("Register"),
          onPressed: () => Navigator.pushNamed(context, 'homePage'),
        ),
      ],
    );
  }
}
