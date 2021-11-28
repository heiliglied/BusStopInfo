import 'package:flutter/material.dart';
import 'package:busstopinfo/views/mainpage.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage()
    );
  }
}
