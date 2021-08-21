import 'dart:ui';

import 'package:dagsap3/constants/color_constant.dart';
import 'package:dagsap3/constants/style_constant.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  final color = Color(0xfff4f4f4);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mBgColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hider3.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Welcome!",
                      style: hdfont,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          "Keluhkan sakitmu, tim medis PT Dagsap akan membantumu.  ",
                          style: lighthd,
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 595,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              child: Image.asset('assets/images/konsul1.png'),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
