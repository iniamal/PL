import 'package:dagsap3/constants/color_constant.dart';
import 'package:dagsap3/constants/style_constant.dart';
import 'package:dagsap3/register.dart';
import 'package:dagsap3/user/dashboard.dart';
import 'package:flutter/material.dart';

class HomeMedis extends StatefulWidget {
  @override
  _HomeMedisState createState() => _HomeMedisState();
}

class _HomeMedisState extends State<HomeMedis>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Tim Medis Dagsap'),
        elevation: 0.7,
        backgroundColor: dagsapred,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "Terbaru"),
            Tab(text: "Selesai"),
            Tab(
              text: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
