import 'package:busstopinfo/views/partitions/BaseAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadPage extends StatefulWidget {

  const UploadPage({Key? key}) : super(key: key);
  // final String title;
  static const routeName = '/settings/upload';

  @override
  _UploadPageState createState() => _UploadPageState();

}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as AppbarArgs;

    return Scaffold(
        appBar: BaseAppBar(args.title),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("업로드")),
            ],
          ),
        )
    );
  }

}

class AppbarArgs {
  final String title;
  AppbarArgs(this.title);
}
