import 'package:flutter/material.dart';
import 'screen/ContactUs.dart';
import 'screen/OpenApp.dart';
import 'screen/ShopProfileSetting.dart';
import 'screen/ShopAccountSetting.dart';
import 'screen/UserProfileSetting.dart';
import 'screen/SearchMotor.dart';
import 'screen/Welcome.dart';
import 'screen/verifyEmail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShopAccountSetting(),
    );
  }
}
