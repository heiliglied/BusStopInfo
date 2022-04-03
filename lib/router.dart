import 'package:busstopinfo/views/mainpage.dart';
import 'package:busstopinfo/views/menus/UploadPage.dart';
import 'package:flutter/widgets.dart';

class Routes {
  Routes._();
  static const String mainPage = MainPage.routeName;
  // static const String splashPage = "/splash";
  static const String uploadPage = UploadPage.routeName;

  static final routes = <String, WidgetBuilder>{
    mainPage: (BuildContext context) => MainPage(),
    // splashPage: (BuildContext context) => splashPage(),
    uploadPage: (BuildContext context) => const UploadPage(title: "업로드하기"),
  };
}