import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget{

  @override
  final Size preferredSize;
  final String title;

  BaseAppBar(this.title, {Key? key}) : preferredSize = AppBar().preferredSize, super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "$title"
      ),
    );
  }

}