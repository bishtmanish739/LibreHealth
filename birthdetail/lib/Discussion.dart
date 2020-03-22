import 'package:flutter/material.dart';
class Discussion extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discussion"),
      ),
      body: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[Text("Chat Now"),Text("Send Mgs"),Icon(Icons.chat),
          ],
        ),




      ),
    );
  }
}