import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

/**
 * Class MyHomePage dùng để đăng nhập vào ứng dụng, cũng như activate account
 */
class MyHomePage extends StatelessWidget {
  final title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Get height display driver
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SafeArea(
            child: FooterView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 100.0, 18.0, 30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('welcome!'),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text('User Name'),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
                                borderRadius: BorderRadius.circular(100.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(6, 2),
                                      blurRadius: 6.0,
                                      spreadRadius: 3.0),
                                  BoxShadow(
                                      color: Color.fromRGBO(255, 255, 255, 0.9),
                                      offset: Offset(-6, -2),
                                      blurRadius: 6.0,
                                      spreadRadius: 3.0)
                                ],
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    icon: const Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: const Icon(Icons.account_box),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'email/username'),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text('Password'),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
                                borderRadius: BorderRadius.circular(100.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(6, 2),
                                      blurRadius: 6.0,
                                      spreadRadius: 3.0),
                                  BoxShadow(
                                      color: Color.fromRGBO(255, 255, 255, 0.9),
                                      offset: Offset(-6, -2),
                                      blurRadius: 6.0,
                                      spreadRadius: 3.0)
                                ],
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    icon: const Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 6.0),
                                      child: const Icon(Icons.lock),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'password'),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed('ui/active_account');
                              }, // Handle your callback
                              child: Text('Register an account ?'),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: new MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100.0))),
                                      elevation: 5.0,
                                      height: 50,
                                      color: Colors.blue,
                                      child: new Text('Logn In',
                                          style: new TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white)),
                                      onPressed: () {
                                        Get.toNamed('ui/category_page');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              footer: Footer(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Copyright ©2021, All Rights Reserved.',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.0,
                              color: Color(0xFF162A49)),
                        ),
                        Text(
                          'Powered by CMC Group',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.0,
                              color: Color(0xFF162A49)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 4,
            ),
          );
        },
      ),
    );
  }
}
