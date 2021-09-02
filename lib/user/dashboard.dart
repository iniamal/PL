import 'dart:ui';
import 'package:dagsap3/user/formcov.dart';
import 'package:dagsap3/user/riwayatkaryawan.dart';
import 'package:dagsap3/user/sarankaryawan.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dagsap3/bottom_navbar.dart';
import 'package:dagsap3/constants/color_constant.dart';
import 'package:dagsap3/constants/style_constant.dart';
import 'package:flutter/material.dart';

_launchURLBrowser() async {
  const url =
      'https://www.alodokter.com/komunitas/topic/apa-penyebabnya-kepala-pusing-setelah-memakan-makanan-yang-pedas';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
                    height: 800,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13)),
                    ),
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormCovid()));
                          },
                          padding: EdgeInsets.all(15),
                          child: Container(
                            child: Image.asset(
                              'assets/images/konsul1.png',
                            ),
                          ),
                          color: Colors.white,
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FormCovid()));
                                },
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/konsul2.png',
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 10, top: 15),
                                      child: Text(
                                        'Akses Cepat',
                                        style: defa,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    MaterialButton(
                                      shape: CircleBorder(),
                                      color: dagsapred,
                                      padding: EdgeInsets.all(20),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RiwayatKar()));
                                      },
                                      child: Icon(
                                        Icons.history,
                                        color: Colors.white,
                                        size: 25.0,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          MaterialButton(
                                            shape: CircleBorder(),
                                            color: dagsapred,
                                            padding: EdgeInsets.all(20),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SaranKaryawan()));
                                            },
                                            child: Icon(
                                              Icons.sms,
                                              color: Colors.white,
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          MaterialButton(
                                            shape: CircleBorder(),
                                            color: dagsapred,
                                            padding: EdgeInsets.all(20),
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.assignment_outlined,
                                              color: Colors.white,
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          MaterialButton(
                                            shape: CircleBorder(),
                                            color: dagsapred,
                                            padding: EdgeInsets.all(20),
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.medical_services_outlined,
                                              color: Colors.white,
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 25, top: 10),
                                      child: Text(
                                        'Riwayat',
                                        style: subdefa,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 45, top: 10),
                                            child: Text(
                                              'Saran',
                                              style: subdefa,
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 45, top: 10),
                                                  child: Text(
                                                    'Laporan',
                                                    style: subdefa,
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 45,
                                                                top: 10),
                                                        child: Text(
                                                          'Obat',
                                                          style: subdefa,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 25),
                                child: Text(
                                  'Artikel',
                                  style: defa,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  width: size.width * 0.8,
                                  child: TextButton(
                                    onPressed: _launchURLBrowser,
                                    child: Text(
                                      'Kepala Pusing Setelah Makan Pedas? Cari tahu Penyebabnya disni',
                                      style: defa3,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 20, top: 15),
                                child: SizedBox(
                                  width: size.width * 0.8,
                                  child: Text(
                                    "Kenali Gejala GERD, Mulai dari Pening hingga Mual.",
                                    style: defa3,
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 20, top: 15),
                                child: SizedBox(
                                  width: size.width * 0.8,
                                  child: Text(
                                    "Telinga Sering Berdenging, Ini 9 Penyakit yang Bisa Memicunya",
                                    style: defa3,
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
