import 'dart:async';

import 'dashboard.dart';
import 'loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashcreen> {
  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, () async {
      var box = Hive.box('userBox');
      bool? sudahLogin = box.get('isLogin');

      if (sudahLogin ?? false) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => homescreen()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => loginscreen()),
        );
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/logoapp.png',
          width: 300,
        ),
      ),
    );
  }
}
