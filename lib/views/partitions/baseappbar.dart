import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;
  final bool center;

  const BaseAppBar(
    {
      required Key key,
      required this.appBar,
      this.title = '버스정류장 조회',
      this.center = false
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: center,
      title: Text("$title", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w700),),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}