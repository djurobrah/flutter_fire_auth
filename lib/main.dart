import 'package:flutter/material.dart';
import 'package:flutter_fire_auth/router.dart';

import 'package:flutter_fire_auth/AuthPage.dart';

void main() {
  FluroRouter.defineRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lexend',
      ),
      home: AuthPage(),
//      initialRoute: ,
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}

// TODO: connect Firebase auth and expand from there