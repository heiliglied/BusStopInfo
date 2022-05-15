import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:busstopinfo/views/partitions/BaseAppBar.dart';
import 'package:busstopinfo/views/partitions/BaseDrawer.dart';

import 'package:busstopinfo/config.dart' as configs;
import 'dart:developer';

class UploadPage extends StatefulWidget {
  UploadPage({Key? key}) : super(key: key);
  @override
  _UploadPage createState() => _UploadPage();
}

class _UploadPage extends State<UploadPage> {
  String fileName = '';
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
              height: 50,
              child: Container(
                padding: EdgeInsets.all(10),
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
                          await launchUrl(Uri.parse(configs.seoulBusLink), mode: LaunchMode.externalApplication);
                        },
                        style: TextStyle(color: Colors.blue,)
                      )
                    ]
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 15,
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "* CSV형식만 사용 가능",
                  style: TextStyle(fontSize: 10, color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "파일을 업로드 해 주세요",
                        style: TextStyle(fontSize: 24),
                      )
                    ),
                    ElevatedButton(onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                          type: FileType.any,
                          //allowedExtensions: ['csv']
                        );
                        if(result != null) {
                          final fileInfo = result.files.single;
                          final filePath = fileInfo.path;
                          log("로그 왜 안찍혀!");
                          setState(() {
                            fileName = fileInfo.name;
                          });
                        }
                    }, child: Text('파일 불러오기'))
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                margin: const EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.lightBlueAccent))
                ),
                child: Text(
                  fileName,
                )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 60,
              child: Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () async {
                    //업로드 동작
                  }, child: Text("업로드"),
                ),
              )
            )
          ]
        )
    );
  }
}

