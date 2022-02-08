// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: EdgeInsets.all(8.0),
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      ListTile(
        title: Text('Sun'),
        subtitle: Text('Today'),
        leading: Icon(Icons.wb_sunny),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Cloudy'),
        subtitle: Text('Today'),
        leading: Icon(Icons.wb_cloudy),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Snow'),
        subtitle: Text('Today'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}
