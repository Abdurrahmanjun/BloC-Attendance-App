import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:otaqu/presentation/pages/dashboard_absence/dashboard_absence_page.dart';
import 'package:otaqu/presentation/pages/dashboard_home/dashboard_home_page.dart';
import 'package:otaqu/presentation/pages/dashboard_home/dashboard_home_page_two.dart';
import 'package:otaqu/presentation/pages/dashboard_notification/dashboard_notification_page.dart';
import 'package:otaqu/presentation/pages/dashboard_settings/dashboard_settings_page.dart';

class HomeNavBarPage extends StatefulWidget {
  @override
  _HomeNavBarPageState createState() => _HomeNavBarPageState();
}

class _HomeNavBarPageState extends State<HomeNavBarPage> {
  int currentIndex = 0;

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new DashboardHomePageTwo();
      case 1:
        return new DashboardAbsencePage();
      case 2:
        return new DashboardNotificationPage();
      case 3:
        return new DashboardSettingsPage();
      default:
        return DashboardHomePageTwo();
    }
  }

  /// Build BottomNavigationBar Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            textTheme: TextTheme(
                headline1: TextStyle(color: Colors.black38.withOpacity(0.5)))),
        child: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() => currentIndex = index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Absence'),
                icon: Icon(Icons.pending_actions),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Notification'),
                icon: Icon(Icons.notifications),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
            BottomNavyBarItem(
                title: Text('Settings'),
                icon: Icon(Icons.settings),
                activeColor: Color(0xFF5FBD84),
                inactiveColor: Colors.black38),
          ],
        ),
      ),
    );
  }
}