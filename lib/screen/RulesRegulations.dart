import 'package:flutter/material.dart';

class RulesRegulations extends StatelessWidget {
  const RulesRegulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'กฎและข้อบังคับ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0, //เงาใต้บาร์),
      ),
      body: Center(
        child: Column(
          children: const [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 45),
              child: Text(
                'กฎระเบียบในการใช้ Motorcycle Rental',
                style: TextStyle(
                    color: Color.fromARGB(255, 85, 85, 85),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 100),
            Text(
              'สิ่งที่ควรทำ',
              style: TextStyle(
                  color: Color.fromARGB(255, 44, 201, 70),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(height: 100),
            Text(
              'สิ่งที่ไม่ควรทำ',
              style: TextStyle(
                  color: Color.fromARGB(255, 224, 26, 26),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
