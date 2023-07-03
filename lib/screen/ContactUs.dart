import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 153, 204, 153),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                const SizedBox(height: 60),
                const Text(
                  'ติดต่อเรา',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 5),
                Container(
                  color: Colors.grey[500],
                  width: 350.0,
                  height: 2.5,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 60),
                    Text(
                      'แจ้งรายละเอียดปัญหาที่คุณพบเจอให้ทางเรา',
                      style: TextStyle(fontSize: 12, color: Colors.grey[650]),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 60),
                    Text(
                      'เพื่อประการณ์การใช้งานที่ดียิ่งขึ้น',
                      style: TextStyle(fontSize: 12, color: Colors.grey[650]),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 50),
                    SizedBox(
                      height: 35,
                      width: 280,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'ชื่อของคุณ?',
                          labelText: 'ชื่อ *',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 50),
                    SizedBox(
                      height: 35,
                      width: 280,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'อีเมลที่ติดต่อกลับได้ของคุณ?',
                          labelText: 'อีเมล *',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'แนบรูปภาพ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'รายละเอียด',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
                  child: TextFormField(
                    //controller: _Textcontroller,
                    minLines: 3,
                    maxLines: 6,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.white, //<-- SEE HERE
                        hintText: 'Enter A Message Here',
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, size: 36),
                  onPressed: () {
                    // ...
                  },
                ),
              ]),
            ),
          ),
        ));
  }
}
