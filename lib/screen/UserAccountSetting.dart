import 'package:flutter/material.dart';

class UserAccountSetting extends StatefulWidget {
  const UserAccountSetting({super.key});

  @override
  State<UserAccountSetting> createState() => _UserAccountSettingState();
}

class _UserAccountSettingState extends State<UserAccountSetting> {
  TextEditingController NameController =
      TextEditingController(text: 'Pikachu Obubu');
  TextEditingController EmailController =
      TextEditingController(text: 'Pikachu@gmail.com');
  TextEditingController PhoneController =
      TextEditingController(text: '0987654321');
  TextEditingController AddressController = TextEditingController(
      text: '128 ถ.ห้วยแก้ว ต.ช้างเผือก อ.เมือง จ.เชียงใหม่ 50300');
  TextEditingController LatitudeController =
      TextEditingController(text: '18.123456');
  TextEditingController LongitudeController =
      TextEditingController(text: '98.123456');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ตั้งค่าบัญชี',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        //title: Text(''),
        elevation: 0.0, //เงาใต้บาร์),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(height: 30),
            // Container(
            //   height: 55,
            //   width: 300,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(width: 1, color: Colors.grey)),
            //   child: TextFormField(
            //     onChanged: (value) {
            //       setState(() {
            //         // origPrice = double.parse(
            //         //     value); //แปลงข้อความvalueให้เป็นdouble
            //         // calStatus = false; //เปลี่ยนสถานะเพื่อเคลียร์ผลลัพธ์
            //       });
            //     },
            //     textAlign: TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
            //     style: const TextStyle(color: Colors.black, fontSize: 18),
            //     decoration: const InputDecoration(
            //       border: OutlineInputBorder(borderSide: BorderSide.none),
            //       hintText: "ชื่อ นามสกุล",
            //       labelText: 'ชื่อ นามสกุล',
            //       hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            //     ),
            //   ),
            // ),
            //ชื่อ นามสกุล
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
              child: TextFormField(
                controller: NameController,
                minLines: 1,
                maxLines: 1,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white, //<-- SEE HERE
                    hintText: 'ชื่อ นามสกุล',
                    labelText: 'ชื่อ นามสกุล',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
              child: TextFormField(
                controller: EmailController,
                minLines: 1,
                maxLines: 1,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white, //<-- SEE HERE
                    hintText: 'อีเมล',
                    labelText: 'อีเมล',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
              child: TextFormField(
                controller: PhoneController,
                minLines: 1,
                maxLines: 1,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white, //<-- SEE HERE
                    hintText: 'เบอร์โทรศัพท์',
                    labelText: 'เบอร์โทรศัพท์',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
              child: TextFormField(
                controller: AddressController,
                minLines: 2,
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white, //<-- SEE HERE
                    hintText: 'ข้อมูลที่อยู่',
                    labelText: 'ข้อมูลที่อยู่',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            SizedBox(height: 10),
            //กล่อง location
            Container(
              height: 80,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.black)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ที่อยู่บนแผนที่ Google Maps',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      //ปุ่มตำแหน่ง
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          //minimumSize: Size(100, 40)
                        ),
                        icon: Icon(Icons.gps_fixed),
                        label: Text('gps'),
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              // origPrice = double.parse(
                              //     value); //แปลงข้อความvalueให้เป็นdouble
                              // calStatus = false; //เปลี่ยนสถานะเพื่อเคลียร์ผลลัพธ์
                            });
                          },
                          enabled: false,
                          controller: LatitudeController,
                          textAlign:
                              TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14),
                          decoration: const InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "18.xxxxxx",
                            //labelText: '18.xxxxxx',
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              // origPrice = double.parse(
                              //     value); //แปลงข้อความvalueให้เป็นdouble
                              // calStatus = false; //เปลี่ยนสถานะเพื่อเคลียร์ผลลัพธ์
                            });
                          },
                          enabled: false,
                          controller: LongitudeController,
                          textAlign:
                              TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14),
                          decoration: const InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "98.xxxxxx",
                            //labelText: '98.xxxxxx',
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            //ปุ่มแก้ไข
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
                    'แก้ไข',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
