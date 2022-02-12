import 'package:bottombar/controllers/controller.dart';
import 'package:bottombar/views/homepageSCreen.dart';
import 'package:bottombar/views/notification_page.dart';
import 'package:bottombar/views/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
   final _controller = Get.put(BottomNavigationController());
  final screens = [
    HomePageScreen(),
    const NotificationPage(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(
        ()=> IndexedStack(
             index: _controller.selectedIndex.value,
             children: screens,
            ),
      ),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
           showUnselectedLabels: false,
           onTap: (index) {
    _controller.changeIndex(index);
    },
           currentIndex: _controller.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              //  backgroundColor: darkGreen,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              //  backgroundColor: darkPink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
              // backgroundColor: darkblue,
            )
          ],
        ),
      ),
    );
  }
}
