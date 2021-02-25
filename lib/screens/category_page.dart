import 'package:cmc_sing/controllers/auth_controler.dart';
import 'package:cmc_sing/controllers/category_controllers.dart';
import 'package:cmc_sing/controllers/drawer_controller.dart';
import 'package:cmc_sing/screens/home_sign_file.dart';
import 'package:cmc_sing/screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends GetWidget<DraController> {
  //controller manager
  final NavController navController = Get.put(NavController());
  final DraController drawerController=Get.put(DraController());
  final AuthController authController=Get.put(AuthController());
  final List<Widget> bodyContent = [
    HomeSignFile(),
    SettingAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Account Ìnomation'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Logn out'),
              onTap: (){
                  authController.signOut();
                  drawerController.closeDrawer();
              },
            )
          ],
        ),
      ),
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
