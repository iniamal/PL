import 'package:dagsap3/constants/style_constant.dart';
import 'package:dagsap3/register.dart';
import 'package:dagsap3/user/dashboard.dart';
import 'package:flutter/material.dart';
import 'constants/color_constant.dart';
import 'constants/style_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBgColor,
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Image.asset(
                'assets/images/logo4.png',
                height: 70,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                'PT DAGSAP ENDURA EATORA',
                style: subdefa,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 5),
              child: Text(
                'STAY',
                style: bsar,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, bottom: 5),
              child: Text(
                'SAFE',
                style: bsar,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
              child: Column(
                children: <Widget>[
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
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserDashboard()));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
            Container(
                child: TextButton(
                    child: Text(
                      'Buat akun baru',
                      style: TextStyle(
                          color: dagsapred,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    })),
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Text(
                'Amalia Sabrina - 2021',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black26),
              ),
            )
          ],
        ),
      ),
    );
  }
}
