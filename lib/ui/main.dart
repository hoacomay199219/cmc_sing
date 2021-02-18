import 'package:cmc_sing/ui/active_account.dart';
import 'package:cmc_sing/ui/category_page.dart';
import 'package:cmc_sing/ui/home_page.dart';
import 'package:cmc_sing/ui/list_to_sign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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
      home: MyHomePage(title: 'CMC Signing'),
      getPages: [
        GetPage(name: 'ui/', page: () => MyHomePage()),
        GetPage(name: 'ui/active_account', page: () => ActiveAccount()),
        GetPage(name: 'ui/category_page', page: () => CategoryPage()),
        GetPage(name: 'ui/list_to_sign', page: () => ListToSign()),
      ],
    );
  }
}
