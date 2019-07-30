import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Authenticate'),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Card(
            elevation: 20,
            child: Column(
              children: <Widget>[
                Text("Press button to log in"),
                RaisedButton(
                  child: Text("Log in"),
                  onPressed: () => Navigator.pushNamed(context, 'homePage'),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
