import 'package:busstopinfo/models/BusStop.dart';
import 'package:busstopinfo/providers/BusStopList.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainPage extends StatelessWidget {

  final items = List<BusStop>.generate(6, (index) => BusStop("버스정류장 ${index + 1}", 222, 333.333333, 444.444444));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("app bar test"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6 - AppBar().preferredSize.height,
            child: const WebView(
              initialUrl: "https://flutter.dev",
              // javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4 - AppBar().preferredSize.height,
            // child: Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height,
            //   margin: const EdgeInsets.all(5),
              child: ListView.separated(
                padding: const EdgeInsets.all(5),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return BusStopList(item);
                },
                separatorBuilder: (context, index) {
                  // if (index == 0) return const SizedBox.shrink();
                  return const Divider();
                },
              ),
            )
          // )
        ],
      ),
    );
  }
}


