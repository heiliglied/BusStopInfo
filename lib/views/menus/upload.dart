import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import 'package:busstopinfo/views/partitions/BaseAppBar.dart';
import 'package:busstopinfo/views/partitions/BaseDrawer.dart';

class UploadPage extends StatefulWidget {
  UploadPage({Key? key}) : super(key: key);
  @override
  _UploadPage createState() => _UploadPage();
}

class _UploadPage extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
        appBar: BaseAppBar(arguments['title']),
        endDrawer: BaseDrawer(),
        body: Column(

        )
    );
  }
}

