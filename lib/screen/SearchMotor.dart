import 'package:flutter/material.dart';

class SearchMotor extends StatefulWidget {
  const SearchMotor({super.key});

  @override
  State<SearchMotor> createState() => _SearchMotorState();
}

class _SearchMotorState extends State<SearchMotor> {
  RangeValues _currentRangeValues = const RangeValues(0, 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //title: Text(''),
          elevation: 0.0, //เงาใต้บาร์
        ),
        body: Stack(
          children: [
            //container สีเทา
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 233, 233, 233),
                //border: Border.all(width: 0.5, color: Colors.grey),
                //borderRadius: BorderRadius.circular(10), //ขอบโค้ง
              ),
            ),
            //container สีขาว
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)), //ขอบโค้ง
              ),
              height: 600,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    const Text(
                      'ค้นหารถเช่าที่คุณต้องการ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 35),
                    Row(children: const [
                      SizedBox(width: 40),
                      Text('วันและเวลา')
                    ]),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        //debugPrint(" ");
                      },
                      child: Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 171, 226, 174),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'เลือกช่วงวันที่',
                            style: TextStyle(
                                fontSize: 18,
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(children: const [
                      SizedBox(width: 40),
                      Text('ประเภทรถจักรยานยนต์')
                    ]),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        //debugPrint(" ");
                      },
                      child: Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 171, 226, 174),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Gear, Auto',
                            style: TextStyle(
                                fontSize: 18,
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                            //debugPrint(" ");
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 171, 226, 174)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'จังหวัด',
                                style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                            //debugPrint(" ");
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 171, 226, 174)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'อำเภอ',
                                style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                            //debugPrint(" ");
                          },
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 171, 226, 174)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'ตำบล',
                                style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(children: const [
                      SizedBox(width: 40),
                      Text('ช่วงราคา')
                    ]),
                    RangeSlider(
                      values: _currentRangeValues, //ตัวแปรค่าเริ่มต้น*มีด้านบน
                      max: 2000,
                      divisions: 20, //ระดับขั้น
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    Text(
                      '${_currentRangeValues}',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 60),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        //debugPrint(" ");
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'ค้นหา',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
