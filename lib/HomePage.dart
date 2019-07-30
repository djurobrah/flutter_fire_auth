import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Logged in'),
        ),
      ),
      body: Center(
        child: Text("Logged in."),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
