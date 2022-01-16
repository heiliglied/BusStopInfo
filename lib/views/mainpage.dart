import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            )
          ],
        )
    );
  }
}