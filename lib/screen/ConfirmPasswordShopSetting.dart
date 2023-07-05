import 'package:flutter/material.dart';

class ConfirmPasswordShopSetting extends StatefulWidget {
  const ConfirmPasswordShopSetting({super.key});

  @override
  State<ConfirmPasswordShopSetting> createState() =>
      _ConfirmPasswordShopSettingState();
}

class _ConfirmPasswordShopSettingState
    extends State<ConfirmPasswordShopSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ป้อนรหัสยืนยัน',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0, //เงาใต้บาร์),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
            child: TextFormField(
              //controller: NameController,
              decoration: InputDecoration(
                //filled: true, //<-- SEE HERE
                //fillColor: Colors.white, //<-- SEE HERE
                //hintText: 'ชื่อ นามสกุล',
                labelText: 'ป้อนรหัสผ่านของคุณ',
                hintStyle: TextStyle(color: Colors.grey[600]),
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10)),
                //     ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 45),
            child: Text(
              'คุณจำเป็นต้องป้อนรหัสผ่านเพื่อยืนยันการเปลี่ยนแปลงข้อมูล',
              maxLines: 2,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
              //debugPrint(" ");
            },
            child: Container(
              height: 45,
              width: 220,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 188, 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'ยืนยัน',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
