import 'dart:math';

import 'package:flutter/material.dart';
import 'express.dart';
import 'regular.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _screenList = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome,",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        "Admin!",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
                      )
                    ],
                  ),
                  Icon(Icons.menu)
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: Text('Regular'),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => regular()));
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 100, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: Text('Express'),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => express()));
                      },
                    ),
                  ),
                ],
              ),
            ])));
  }
}
