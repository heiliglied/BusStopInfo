import 'package:busstopinfo/models/BusStop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BusStopList extends StatelessWidget {

  BusStopList(this._busStop);

  final BusStop _busStop;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(_busStop.name),
    );
  }
}

