import 'package:busstopinfo/router.dart';
import 'package:busstopinfo/views/menus/UploadPage.dart';
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
              Navigator.pushNamed(context, UploadPage.routeName, arguments: TestArgs("테스트 args", "test args"));
            },
          ),
        ],
      ),
    );
  }
}