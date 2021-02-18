import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListToSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List To Sign'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Photo'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
