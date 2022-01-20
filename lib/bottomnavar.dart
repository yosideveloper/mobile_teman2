// ignore_for_file: unnecessary_const
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:popup/model_user.dart';
import 'package:popup/page_get_data.dart';
import 'home.dart';
import 'grid.dart';
import 'user.dart';
import 'list.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageGetData extends StatefulWidget {
  //variavel
  final UserModel value;

  //key
  PageGetData({
    Key? key,
    required this.value,
  }) : super(key: key);

  _PageGetDataState createState() => _PageGetDataState();
}

class _PageGetDataState extends State<PageGetData> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Grid(),
    Profil(),
  ];

  static var value;

  static get email => null;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark_rounded),
            label: 'Work',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_rounded),
            label: 'discussion',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
