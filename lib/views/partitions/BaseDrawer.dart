import 'package:flutter/material.dart';

class BaseDrawer extends StatelessWidget {
  BaseDrawer({Key? key, Widget? child, String? semanticLabel});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Text("부가기능")),
          ListTile(
            title: Text('공공데이터 업로드'),
            onTap: () {
              final snackbar = SnackBar(content: Text('클릭'));
            },
          )
        ],
      ),
    );
  }
}