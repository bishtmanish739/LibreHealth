import 'package:flutter/material.dart';
class NearbyHospital extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Hospital "),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Hospital nearby me'),
        ),
      ),
    );
  }
}
