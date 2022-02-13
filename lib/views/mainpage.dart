import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:busstopinfo/views/partitions/baseappbar.dart';
//import 'package:busstopinfo/models/busstop.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(key: UniqueKey(), appBar: AppBar()),
        body:Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              child: WebView(
                initialUrl: "https://m.map.naver.com/",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.all(5.0),
                color: Colors.blue,
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Entry A')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('Entry B')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Entry C')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Entry C')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Entry C')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Entry C')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('Entry C')),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}