import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:oil_buddy/views/fuel_order_page.dart';

import 'package:oil_buddy/views/search_page.dart';
// ignore: duplicate_import
import 'package:oil_buddy/views/fuel_order_page.dart';
import 'package:oil_buddy/views/user_page.dart';
import 'package:oil_buddy/views/show_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ShowPage(),
    FuelOrderPage(),
    UserPage(),
    SearchPage(title: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('OilBuddy'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  iconActiveColor: Colors.blue,
                  text: 'Home',
                ),
                // GButton(
                //   icon: LineIcons.search,
                //   iconActiveColor: Colors.blue,
                //   text: 'Search',
                // ),
                GButton(
                  icon: LineIcons.tasks,
                  iconActiveColor: Colors.blue,
                  text: 'Fuel Orders',
                  key: Key('Fuel Orders'),
                ),
                GButton(
                  icon: LineIcons.user,
                  iconActiveColor: Colors.blue,
                  text: 'Profile',
                  key: Key('Profile'),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
