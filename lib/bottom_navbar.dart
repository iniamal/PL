import 'package:flutter/material.dart';
import 'package:dagsap3/user/dashboard.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Color(0xFFC41A3B),
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 24.0,
                  ),
                  text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 24.0,
                  ),
                  text: 'Cart',
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.more,
                    size: 24.0,
                  ),
                  text: 'More',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
