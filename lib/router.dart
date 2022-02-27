import 'package:busstopinfo/views/mainpage.dart';
import 'package:flutter/widgets.dart';

class Routes {
  Routes._();
  static const String mainPage = "/";
  // static const String splashPage = "/splash";

  static final routes = <String, WidgetBuilder>{
    mainPage: (BuildContext context) => MainPage(),
    // splashPage: (BuildContext context) => splashPage(),
  };
}