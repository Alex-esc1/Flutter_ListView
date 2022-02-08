// ignore_for_file: use_key_in_widget_constructors

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
  final List<listItem> items = List<listItem>.generate(
      10000,
      (i) => i % 6 == 0
          ? HeadingItem('Heading $i')
          : MessageItem('Sender $i', 'Message body $i'));
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      final item = items[index];
      if (item is HeadingItem) {
        return ListTile(
          title:
              Text(item.heading, style: Theme.of(context).textTheme.headline5),
        );
      } else if (item is MessageItem) {
        return ListTile(
          title: Text(item.sender),
          subtitle: Text(item.body),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(Icons.keyboard_arrow_right),
        );
      }
      return Card(
        child: ListTile(
          title: Text('${items[index]}'),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      );
    },
  );
}

abstract class listItem {}

class HeadingItem implements listItem {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements listItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);
}
