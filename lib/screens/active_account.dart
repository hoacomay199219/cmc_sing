import 'package:cmc_sing/controllers/auth_controler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
 * Class ActiveAccount để đăng ký tài khoản, thiết bị với server
 */
class ActiveAccount extends GetWidget<AuthController> {
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Account'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register An Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
                      controller: emailControler,
                      decoration: InputDecoration(
                        icon: const Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: const Icon(Icons.account_box),
                        ),
                        border: InputBorder.none,
                        hintText: 'email',
                      ),
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: const Padding(
                          padding: const EdgeInsets.only(bottom: 6.0),
                          child: const Icon(Icons.lock),
                        ),
                        border: InputBorder.none,
                        hintText: 'password',
                      ),
                    ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0))),
                            elevation: 5.0,
                            height: 50,
                            color: Colors.blue,
                            child: new Text('Register',
                                style: new TextStyle(
                                    fontSize: 16.0, color: Colors.white)),
                            onPressed: () {
                              controller.createUser(
                                  emailControler.text, passwordController.text);
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
