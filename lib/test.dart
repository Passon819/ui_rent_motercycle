import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              color: Colors.amber,
              width: 350,
              height: 350,
              child: Column(children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 70,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'aaaaa:',
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      child: Container(
                        width: 240,
                        child: TextFormField(
                          //controller: NameController,
                          //minLines: 1,
                          //maxLines: 1,
                          //keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white, //<-- SEE HERE
                            hintText: 'ชื่อ นามสกุล',
                            labelText: 'ชื่อ นามสกุล',
                            hintStyle: TextStyle(color: Colors.grey[600]),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 70,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'aaa:',
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      child: Container(
                        width: 240,
                        child: TextFormField(
                          //controller: NameController,
                          //minLines: 1,
                          //maxLines: 1,
                          //keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white, //<-- SEE HERE
                            hintText: 'ชื่อ นามสกุล',
                            labelText: 'ชื่อ นามสกุล',
                            hintStyle: TextStyle(color: Colors.grey[600]),
                            // border: OutlineInputBorder(
                            //   borderRadius:
                            //       BorderRadius.all(Radius.circular(10)),
                            // ),
                          ),
                        ),
                      ),
                    ),
                    //SizedBox(),
                  ],
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
