import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'เปลี่ยนรหัสผ่านของคุณ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0, //เงาใต้บาร์),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                  labelText: 'รหัสผ่านปัจจุบัน',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
              child: TextFormField(
                //controller: NameController,
                decoration: InputDecoration(
                  //filled: true, //<-- SEE HERE
                  //fillColor: Colors.white, //<-- SEE HERE
                  hintText: 'ความยาวรหัสผ่านตั้งแต่ 8 ตัวขึ้นไป',
                  labelText: 'รหัสผ่านใหม่',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 45),
              child: TextFormField(
                //controller: NameController,
                decoration: InputDecoration(
                  //filled: true, //<-- SEE HERE
                  //fillColor: Colors.white, //<-- SEE HERE
                  //hintText: 'ความยาวรหัสผ่านตั้งแต่ 8 ตัวขึ้นไป',
                  labelText: 'ยืนยันรหัสผ่าน',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     ),
                ),
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
                    'อัพเดทรหัสผ่าน',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'ลืมรหัสผ่าน?',
                  style: TextStyle(color: Colors.grey[700]),
                ))
          ],
        )),
      ),
    );
  }
}
