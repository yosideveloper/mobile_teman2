import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'model_user.dart';

class ListLayout extends StatelessWidget {
  final UserModel value;

  ListLayout({
    Key? key,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List hari = [
      "senin",
      "selasa",
      "rabu",
      "kamis",
      "jumat",
      "sabtu",
      "minggu",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List Layout"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(hari[index], style: TextStyle(fontSize: 30)),
            ),
          );

          Padding(
            child: new Text(
              'username: ' + value.username,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(10.0),
          );
        },
        itemCount: hari.length,
      ),
    );
  }
}
