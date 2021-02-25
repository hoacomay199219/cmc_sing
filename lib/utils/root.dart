import 'package:cmc_sing/controllers/auth_controler.dart';
import 'package:cmc_sing/screens/category_page.dart';
import 'package:cmc_sing/screens/home_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController>{
  @override
  Widget build(BuildContext context) {
    return Obx((){
      if(controller.user!=null){
        return CategoryPage();
      }else{
        return MyHomePage();
      }
    });
  }

}