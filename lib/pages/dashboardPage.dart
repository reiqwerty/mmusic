import 'package:flutter/material.dart';
import 'package:mmusic/pages/menu/home.dart';
import 'package:mmusic/pages/menu/library.dart';
import 'package:mmusic/pages/menu/profile.dart';
import 'package:get/get.dart';
import 'package:mmusic/pages/menu/search.dart';

import '../controller/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
    Get.find();

    final List<Widget> menus = [
      HomePage(),
      SearchPage(),
      LibraryPage(),
      ProfilePage()
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xffFAFF00),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.normal
          ),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_rounded), label: 'Library'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      );
    });
  }
}
