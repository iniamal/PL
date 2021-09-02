import 'package:dagsap3/constants/color_constant.dart';
import 'package:dagsap3/constants/style_constant.dart';
import 'package:dagsap3/register.dart';
import 'package:dagsap3/user/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SaranKaryawan extends StatefulWidget {
  @override
  _SaranKaryawanState createState() => _SaranKaryawanState();
}

class _SaranKaryawanState extends State<SaranKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dagsapred,
        title: Text('Saran Tim Medis'),
      ),
    );
  }
}
