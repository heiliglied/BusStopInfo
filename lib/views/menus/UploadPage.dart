import 'package:busstopinfo/views/partitions/BaseAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadPage extends StatefulWidget {

  const UploadPage({Key? key, required this.title}) : super(key: key);
  final String title;
  static const routeName = '/settings/upload';

  @override
  _UploadPageState createState() => _UploadPageState();

}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as TestArgs;

    return Scaffold(
        appBar: BaseAppBar(widget.title),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text(args.title)),
              ElevatedButton(onPressed: () {}, child: Text(args.message))
            ],
          ),
        )
    );
  }

}

class TestArgs {
  final String title;
  final String message;

  TestArgs(this.title, this.message);
}
