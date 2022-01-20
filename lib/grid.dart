import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas-Tugas'),
          backgroundColor: Colors.lightBlue,
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          children: [
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    'images/a.jpeg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
