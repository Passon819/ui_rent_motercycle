import 'package:flutter/material.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key, required this.title});
  final String title;

  @override
  State<VerifyEmail> createState() => _VerifyEmail();
}

class _VerifyEmail extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        elevation: 0.0, //เงาใต้บาร์
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            const Text('ยืนยันอีเมล',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const Text('โปรดป้อนรหัสที่เราได้ส่งให้คุณ',
                style: TextStyle(fontSize: 16)),
            const Text('ทางอีเมลของคุณ', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 50),
                Expanded(
                  //flex: 2,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10), //ขอบโค้ง
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      textAlign: TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "code",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50), //เว้นระยะส่วนท้ายของแถว
              ],
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {});
                //debugPrint(" ");
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'ยืนยัน',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 50),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: 70,
                ),
                SizedBox(width: 10),
                Text(
                  'ฉันไม่ได้รับรหัส',
                  style: TextStyle(fontSize: 10),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    //foregroundColor: Colors.black,
                    //padding: const EdgeInsets.all(5.0),
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('ส่งรหัสอีกครั้ง'),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: 70,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
