import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_fire_auth/HomePage.dart';

class FluroRouter {
  static Router router = Router();

  //declare all route Handlers below
  static var _homePageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        HomePage(),
  );

  //define all route names & their respective handlers
  static void defineRoutes() {
    router.define('homePage',
        handler: _homePageHandler, transitionType: TransitionType.fadeIn);
  }
}
