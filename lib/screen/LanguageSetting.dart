import 'dart:math';

import 'package:flutter/material.dart';

enum LanguageOptions { THA, ENG }

class LanguageSetting extends StatefulWidget {
  const LanguageSetting({super.key});

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  LanguageOptions? _character = LanguageOptions.THA; //ตัวเลือกเริ่มต้น

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ภาษา / Language',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0, //เงาใต้บาร์),
      ),
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 45),
            child: Text(
              'เลือกภาษาที่คุณต้องการ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          //
          ListTile(
            title: const Text('ไทย - Thai'),
            leading: Radio<LanguageOptions>(
              value: LanguageOptions.THA,
              groupValue: _character,
              onChanged: (LanguageOptions? value) {
                setState(() {
                  _character = value;
                  // if (value == LanguageOptions.THA) {
                  //   setState(() {
                  //     print('Select Thai');
                  //   });
                  // }
                });
              },
            ),
          ),
          ListTile(
            title: const Text('อังกฤษ - English'),
            leading: Radio<LanguageOptions>(
              value: LanguageOptions.ENG,
              groupValue: _character,
              onChanged: (LanguageOptions? value) {
                setState(() {
                  _character = value;
                  // if (value == LanguageOptions.ENG) {
                  //   setState(() {
                  //     print('Select English');
                  //   });
                  // }
                });
              },
            ),
          ),
          //ทดลองดูค่าการเลือกภาษา
          //Text('${_character}'),
        ],
      ),
    );
  }
}
