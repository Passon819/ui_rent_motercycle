import 'package:flutter/material.dart';

class OpenApp extends StatefulWidget {
  const OpenApp({super.key});

  @override
  State<OpenApp> createState() => _OpenAppState();
}

class _OpenAppState extends State<OpenApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 102, 187, 106),
              Color(0xff1B5E20),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 120,
                        //backgroundColor: Colors.red,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/map.png',
                            color: Color.fromARGB(255, 99, 179, 102),
                            colorBlendMode: BlendMode.hardLight,
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 100,
                            child: Image.asset('assets/images/location.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                  Text('MOTORCYCLE',
                      style: TextStyle(
                        fontSize: 26,
                      )),
                  SizedBox(height: 10),
                  Text(' RENTAL ',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
