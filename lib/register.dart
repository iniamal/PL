import 'package:dagsap3/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'constants/color_constant.dart';
import 'constants/style_constant.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBgColor,
        body: Container(
            child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Image.asset(
                'assets/images/pana.png',
                height: 230,
              ),
            ),
            Container(
              child: Text(
                'REGISTER',
                style: defa2,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'ID-Karyawan',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: dagsapred))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Nama Lengkap',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: dagsapred))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: dagsapred))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: dagsapred),
                        )),
                    obscureText: true,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Jabatan',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: dagsapred))),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: dagsapred,
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        )));
  }
}
