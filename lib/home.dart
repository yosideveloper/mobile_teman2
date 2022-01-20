import 'package:flutter/material.dart';
import 'package:popup/list.dart';
import 'package:popup/row.dart';

// import 'listview.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    var Value;
    return Container(
      child: Scaffold(
        body: RowLayout(),
      ),
    );
  }
}
