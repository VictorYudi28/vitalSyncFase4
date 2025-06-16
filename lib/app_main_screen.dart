import 'package:flutter/cupertino.dart' hide Title;
import 'package:flutter/material.dart' hide Title;
import 'package:vitalsync/profile.dart';
import 'package:vitalsync/vital_maps_screen.dart';
import 'api_vital_sync.dart';
import 'custon_bottomNavigationBar.dart';
import 'general.dart';
import 'home_page.dart';

class AppMainScreen extends StatefulWidget {
  @override
  State<AppMainScreen> createState() => AppMainScreenState();
}

class AppMainScreenState extends State<AppMainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Profile(),
    VitalMapsScreen(),
    ApiVitalSync(),
    General(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFFFE5),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

