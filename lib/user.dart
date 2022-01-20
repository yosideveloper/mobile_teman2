import 'package:flutter/material.dart';
import 'home.dart';
import 'bottomnavar.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  get username => null;

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Image.asset(
          'images/1.jpeg',
          width: 360,
          height: 360,
        ),
        Card(
            child: ListTile(
          title: Text(
            "register sukses",
            style: TextStyle(color: Colors.blue),
          ),
        )),
        Card(
            child: ListTile(
          title: Text("NAMA " + widget.username.value),
          subtitle: Text(""),
        )),
        Card(
            child: ListTile(
          title: Text("NO HP"),
          subtitle: Text(''),
        )),
        Card(
            child: ListTile(
          title: Text("EMAIL"),
          subtitle: Text(""),
        )),
        MaterialButton(
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: () {
            var value;
            var route = new MaterialPageRoute(
              builder: (BuildContext context) => PageGetData(
                value: value,
              ),
            );
            Navigator.of(context).push(route);
          },
          child: Text('LANJUT KE BERANDA =>'),
        )
      ],
    );
  }
}

// class Profil extends StatelessWidget {
//   final UserModel value;

//   //key
//   Profil({
//      Key ? key,
//     required this.value,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var widget;
//     return Scaffold(
//     body: Center(
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//               Padding(
//                 child: new Text(
//                   'Data Terambil',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 20.0),
//               ),
//               /*
//               * menampilkan data yang diinputkan pada halaman pagepassingvalue
//               * ditampilkan dengan memanggil widget.value. ....
//                */
//               Padding(
//                 child: new Text(
//                   'username: ' + widget.value.nama,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 padding: EdgeInsets.all(10.0),
//               ),
//               Padding(
//                 child: new Text(
//                   'username: ' + widget.value.nohp,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 padding: EdgeInsets.all(10.0),
//               ),
//               Padding(
//                 child: new Text(
//                   'email: ' + widget.value.email,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 padding: EdgeInsets.all(10.0),
//               ),
//             ],

//         ),
//       ),
//     ),
//     );
//   }
// }