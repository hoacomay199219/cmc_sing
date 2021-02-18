import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Class SettungAccount thực hiện các thiết lập trên tài khoản người dùng
 */
class SettingAccount extends StatelessWidget {
  final title;
  SettingAccount({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
