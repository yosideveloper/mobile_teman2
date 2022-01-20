import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class RowLayout extends StatelessWidget {
  const RowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Layout"),
        backgroundColor: Colors.red,
      ),
      body: new Row(
        //Digunakan agar widget mengisi ruang kosong pada layar
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //Widget Pertama
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.apps, color: Colors.red[900], size: 40.0),
              new Text('Aplikasi'),
            ],
          ),
          //Widget Keuda
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.android, color: Colors.red[900], size: 40.0),
              new Text('Android'),
            ],
          ),
          //Widget Ketiga
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.call, color: Colors.red[900], size: 40.0),
              new Text('Panggilan'),
            ],
          ),
        ],
      ),
    );
  }
}
