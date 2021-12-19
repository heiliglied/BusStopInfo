import 'package:flutter/widgets.dart';

class Routes {
  Routes._();
  static const String mainPage = "/";
  static const String splashPage = "/splash";

  static final routes = <String, WidgetBuilder>{
    mainPage: (BuildContext context) => mainPage(),
    splashPage: (BuildContext context) => splashPage(),
  };
}