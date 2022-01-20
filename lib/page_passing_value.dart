import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:popup/bottomnavar.dart';
import 'package:popup/list.dart';
import 'model_user.dart';
import 'list.dart';
import 'bottomnavar.dart';

class PagePassingValue extends StatefulWidget {
  // const PagePassingValue({ Key? key }) : super(key: key);

  @override
  _PagePassingValueState createState() => _PagePassingValueState();
}

class _PagePassingValueState extends State<PagePassingValue> {
  //menentukan controller inputan
  var _userController = new TextEditingController();
  var _emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Value'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              //judul dan widget yang digunakan
              Padding(
                child: new Text(
                  'Please Input Data',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(20.0),
              ),
              TextFormField(
                controller: _userController,
                decoration: InputDecoration(hintText: 'Input Username'),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Input email'),
              ),
              MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  /*berpindah antar halaman dengan cara memanggil halaman yang dituju
                  * halaman yang dituju adalah halaman pagegetdata dimana isi dari getpagedata
                  * mengambil data dari controller yang ada di usermodel yaitu dengan mencocokkan
                  * controller yang ada dengan inputan yang diinputkan pada controller inputan
                  * kemudian akan dipindahkan dengan Navigator.of(context).push(route)
                  */
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => PageGetData(
                            value: UserModel(
                                username: _userController.text,
                                email: _emailController.text),
                          ));
                  Navigator.of(context).push(route);
                },
                child: Text('Kirim'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
