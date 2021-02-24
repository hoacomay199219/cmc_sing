import 'package:cmc_sing/controllers/bindings/auth_binding.dart';
import 'package:cmc_sing/screens/active_account.dart';
import 'package:cmc_sing/screens/category_page.dart';
import 'package:cmc_sing/screens/home_page.dart';
import 'package:cmc_sing/screens/home_sign_file.dart';
import 'package:cmc_sing/screens/list_to_sign.dart';
import 'package:cmc_sing/utils/root.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CMC Signing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0XFFEFF3F6),
      ),
      initialBinding: AuthBinding(),
      home: Root(),
      getPages: [
        GetPage(name: 'screen/', page: () => MyHomePage()),
        GetPage(name: 'screen/active_account', page: () => ActiveAccount()),
        GetPage(name: 'screen/category_page', page: () => CategoryPage()),
        GetPage(name: 'screen/list_to_sign', page: () => ListToSign()),
        GetPage(name: 'screen/home_sing_file', page: () => HomeSignFile()),
      ],
    );
  }
}
