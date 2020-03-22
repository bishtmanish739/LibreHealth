import 'package:flutter/material.dart';
import 'package:share/share.dart';

class childinfo extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health data"),
      ),
      body: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[Text("Health data"),Column(children: <Widget>[Text("This is dummy child")],),
          ],
        ),
    )
    );
    }
}
