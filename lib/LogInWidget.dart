import 'package:flutter/material.dart';

class LogInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Card(
        elevation: 20,
        child: Column(
          children: <Widget>[
            Text("Press button to log in"),
            RaisedButton(
              child: Text("Log in"),
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
