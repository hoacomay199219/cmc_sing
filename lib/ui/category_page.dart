import 'package:cmc_sing/controllers/category_controllers.dart';
import 'package:cmc_sing/ui/home_sign_file.dart';
import 'package:cmc_sing/ui/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  //controller manager
  final NavController navController = Get.put(NavController());
  final List<Widget> bodyContent = [
    HomeSignFile(),
    SettingAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Center(
            child: bodyContent.elementAt(navController.selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            )
          ],
          currentIndex: navController.selectedIndex,
          onTap: (index) => navController.selectedIndex = index,
        ),
      ),
    );
  }
}
