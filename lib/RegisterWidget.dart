import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Card(
        elevation: 20,
        child: Column(
          children: <Widget>[
            Text("Press button to register"),
            RaisedButton(
              child: Text("Register"),
              onPressed: () => Navigator.pushNamed(context, 'homePage'),
            ),
            RaisedButton(
              child: Text("Switch"),
              onPressed: () => Navigator.pushNamed(context, 'homePage'),
            ),
          ],
        ),
      ),
    );
  }
}
