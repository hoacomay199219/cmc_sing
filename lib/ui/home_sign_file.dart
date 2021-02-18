import 'package:cmc_sing/models/message.dart';
import 'package:firebase_cloud_messaging/firebase_cloud_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Class Home chưa nôi các hoạt động gần đây của tài khoản
 * Hiển thị số lượng tài liệu cần ký
 * Số lượng tài liệu chờ ký nhưng quá hạn
 */
class HomeSignFile extends StatelessWidget {
  final title;
  const HomeSignFile({Key key, this.title}) : super(key: key);
  Widget _buildStack() => Stack(
        alignment: const Alignment(0.9, 0.9),
        children: [
          Container(
              margin: EdgeInsets.all(10),
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle,
                  //border: new Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C4E0BAQFSjtxKev2A3A/company-logo_200_200/0/1519905420722?e=2159024400&v=beta&t=zubm6hTdgHOso-rM1J3PkudLnYeZegAF7K-lHNDK7WI")))),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              icon: Icon(Icons.camera_alt_sharp),
              color: Colors.blue,
              onPressed: () {},
            ),
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: Container(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DecoratedBox(
                    // add this
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          _buildStack(),
                          Text(
                            'CIST',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                          Text('CMC Corporation',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        ],
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          //                    <--- top side
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0XFFE7474bf), Color(0XFFE348ac7)]),
                      //image: DecorationImage(
                      //image: NetworkImage('https://placeimg.com/640/480/any'),
                      // fit: BoxFit.fill)
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blue[300],
                                  offset: Offset(6, 1),
                                  blurRadius: 6.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 0.9),
                                  offset: Offset(-6, -2),
                                  blurRadius: 6.0,
                                  spreadRadius: 3.0)
                            ],
                          ),
                          // Container image 1
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                          child: FlatButton(
                            onPressed: () {
                              Get.toNamed('ui/list_to_sign');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text('Wait overdue signing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          // Container image 2
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0XFFEf7c466),
                                  offset: Offset(2, 1),
                                  blurRadius: 3.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 0.9),
                                  offset: Offset(-6, -2),
                                  blurRadius: 6.0,
                                  spreadRadius: 3.0)
                            ],
                            //border: Border.all(width: 10.0, color: Colors.black38),
                            color: Color(0XFFEF59F00),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0)),
                          ),
                          margin:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text('Documents to sign',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Recent activity',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                                fontSize: 20)),
                        SizedBox(
                          height: 300,
                          child: ListNotification(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ListNotification extends StatefulWidget {
  const ListNotification({
    Key key,
  }) : super(key: key);

  @override
  _ListNotificationState createState() => _ListNotificationState();
}

class _ListNotificationState extends State<ListNotification> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final List<Message> messages = [];
  @override
  void initState() {
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('onMessage: $message');
        final notification = message['notification'];
        setState(() {
          messages.add(
            Message(
              title: notification['title'],
              body: notification['body'],
            ),
          );
        });
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('onLaunch: $message');
      },
      onResume: (Map<String, dynamic> message) async {
        print('onResume: $message');
        final notification = message['CMC'];
        setState(() {
          messages.add(
            Message(
              title: notification['title'],
              body: notification['body'],
            ),
          );
        });
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
      const IosNotificationSettings(sound: true, badge: true, alert: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: messages.map(buildMessage).toList(),
    );
  }

  Widget buildMessage(Message message) => ListTile(
        title: Text(message.title),
        subtitle: Text(message.body),
      );
}
