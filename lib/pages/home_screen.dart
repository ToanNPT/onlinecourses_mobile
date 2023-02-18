import 'package:first_ui/main.dart';
import 'package:flutter/material.dart';

import "../ultis/TitlteConstants.dart" as constantsString;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool pressed = false;
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(constantsString.APPBAR_TITLE),
      ),
      body: const SingleChildScrollView(
          child: Text("ksdfi"),
          ),
    );
    throw UnimplementedError();
  }
}
