import 'package:flutter/material.dart';
import 'package:busstopinfo/router.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Routes.mainPage,
        routes: Routes.routes,
    );
  }
}
