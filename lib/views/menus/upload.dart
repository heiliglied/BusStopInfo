import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:busstopinfo/views/partitions/BaseAppBar.dart';
import 'package:busstopinfo/views/partitions/BaseDrawer.dart';

import 'package:busstopinfo/config.dart' as configs;

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
        //appBar: BaseAppBar(configs.seoulBusLink),
        endDrawer: BaseDrawer(),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: RichText(
                text: TextSpan(
                  text: '서울시 버스정류장 정보 : ',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '바로가기',
                      recognizer: TapGestureRecognizer() ..onTap = () async {
                        //링크 실행 함수 추가.
                        //await launch(configs.seoulBusLink, forceWebView: true, forceSafariVC: true);
                        await launchUrl(Uri.parse(configs.seoulBusLink));
                      },
                      style: TextStyle(color: Colors.blue,)
                    )
                  ]
                ),
              )
            ),
          ],
          /*
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 30,
            child:
          ),
           */
        )
    );
  }
}

