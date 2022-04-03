import 'package:busstopinfo/views/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:busstopinfo/router.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: MainPage.routeName,
        routes: Routes.routes,
    );
  }
}
