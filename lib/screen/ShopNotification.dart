import 'package:flutter/material.dart';

class ShopNotification extends StatefulWidget {
  const ShopNotification({super.key});

  @override
  State<ShopNotification> createState() => _ShopNotificationState();
}

class _ShopNotificationState extends State<ShopNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Text(
              'แจ้งเตือนรายการเช่ารถ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      )),
    );
  }
}
