import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_fire_auth/HomePage.dart';

class FluroRouter {
  static Router router = Router();

  static var _homePageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        HomePage(),
  );

  static void defineRoutes() {
    router.define('homePage',
        handler: _homePageHandler, transitionType: TransitionType.fadeIn);
  }
}
