import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/controllers/main_controller.dart';
import 'package:just_adobe_app/features/tabs/dashboard_screen.dart';
import 'package:just_adobe_app/features/tabs/home_tab_screen.dart';
import 'package:just_adobe_app/features/widgets/dashboard_widgets.dart';

class HomeScreen extends GetView<MainController> {
  HomeScreen({super.key});

  final List<Widget> _screens = [
    HomeTabScreen(),
    DashboardScreen(),
    PlaceholderWidget(color: Colors.orange, text: 'Favorites'),
    PlaceholderWidget(color: Colors.purple, text: 'Notifications'),
    PlaceholderWidget(color: Colors.red, text: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Color(0xFF234795),
        body: _screens[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          // Fixed
          backgroundColor: Color(0xFF234795),
          // this works for fixed only
          onTap: (index) {
            controller.currentIndex.value = index;
          },
          currentIndex: controller.currentIndex.value,
          items: true
              ? DashboardWidgets().loggedInBottomMenus
              : DashboardWidgets().publicBottomMenus,
        ),
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String text;

  PlaceholderWidget({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
