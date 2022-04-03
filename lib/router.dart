import 'package:busstopinfo/views/mainpage.dart';
import 'package:busstopinfo/views/menus/upload.dart';
import 'package:flutter/widgets.dart';

class Routes {
  Routes._();
  static const String mainPage = "/";
  static const String uploadPage = "/settings/upload";

  static final routes = <String, WidgetBuilder>{
    mainPage: (BuildContext context) => MainPage(),
    uploadPage: (BuildContext context) => UploadPage(),
  };
}