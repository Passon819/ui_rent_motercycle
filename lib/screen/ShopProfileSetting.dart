import 'package:flutter/material.dart';

class ShopProfileSetting extends StatefulWidget {
  const ShopProfileSetting({super.key});

  @override
  State<ShopProfileSetting> createState() => _ShopProfileSettingState();
}

class _ShopProfileSettingState extends State<ShopProfileSetting> {
  String? get = 'datatest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          //พื้นเทา
          Container(
            width: 500,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 244, 244, 244)),
            child: Column(children: [
              SizedBox(
                height: 245,
              ),
              Text(
                'Pikachu Obubu',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(width: 90),
                  Text(
                    'Pikachu@gmail.com ',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '0987654321',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              //กล่องตั้งค่า 1
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 35),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'รถที่อยู่ระหว่างให้เช่า';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.date_range),
                                SizedBox(width: 10),
                                Text(
                                  'รถที่อยู่ระหว่างให้เช่า',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'สถานะรถจักรยานยนต์ของร้านฉัน';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.published_with_changes),
                                SizedBox(width: 10),
                                Text(
                                  'สถานะรถจักรยานยนต์ของร้านฉัน',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              //กล่องตั้งค่า 2
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    height: 280,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 35),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'ตั้งค่าบัญชี';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.settings),
                                SizedBox(width: 10),
                                Text(
                                  'ตั้งค่าบัญชี',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'เปลี่ยนรหัสผ่านของคุณ';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.lock),
                                SizedBox(width: 10),
                                Text(
                                  'เปลี่ยนรหัสผ่านของคุณ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'ภาษา / Language';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.language),
                                SizedBox(width: 10),
                                Text(
                                  'ภาษา / Language',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'กฎและข้อบังคับ';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.privacy_tip),
                                SizedBox(width: 10),
                                Text(
                                  'กฎและข้อบังคับ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                get = 'ติดต่อเรา';
                              });
                              //debugPrint(" ");
                            },
                            child: Row(
                              children: [
                                Icon(Icons.contact_emergency),
                                SizedBox(width: 10),
                                Text(
                                  'ติดต่อเรา',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              //ปุ่มออกจากระบบ
              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(width: 1.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout),
                    Text(
                      'ออกจากระบบ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text('$get')
            ]),
          ),
          //ฟ้าบน
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
                //shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                color: Color(0xFFF4EFE9)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                iconSize: 32,
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // ...
                },
              ),
            ]),
          ),
          //รูปภาพ
          Stack(
            children: [
              Positioned(
                top: 150,
                left: 160,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 255, 0, 0)),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://st2.depositphotos.com/1662991/8837/i/600/depositphotos_88370500-stock-photo-mechanic-wearing-overalls.jpg'),
                  ),

                  //color: Color(0xFFe0f2f1)),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
