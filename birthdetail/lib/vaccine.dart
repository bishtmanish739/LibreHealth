import 'package:flutter/material.dart';
class vaccine extends  StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Types Of vaccine "),
    ),
    body: Center(
      child: RaisedButton(
        onPressed: () {
          // Navigate back to first route when tapped.
        },
        child: Text('Go back!'),
      ),
    ),
  );
}
}
