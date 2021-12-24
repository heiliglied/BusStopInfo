import 'package:flutter/widgets.dart';
import 'package:busstopinfo/views/mainpage.dart';

class Routes {
  Routes._();
  static const String mainPage = "/";

  static final routes = <String, WidgetBuilder>{
    mainPage: (BuildContext context) => MainPage(),

  };
}