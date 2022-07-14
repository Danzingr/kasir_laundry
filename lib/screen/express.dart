import 'loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'navbar.dart';

class express extends StatefulWidget {
  const express({Key? key}) : super(key: key);

  @override
  State<express> createState() => _expressState();
}

class _expressState extends State<express> {
  final txtinput = TextEditingController();
  final txtinput1 = TextEditingController();
  final txtinput2 = TextEditingController();
  final txtinput3 = TextEditingController();

  String total = '';

  ontotal() {
    setState(() {
      var input = int.tryParse(txtinput.text) ?? 0;
      var input1 = int.tryParse(txtinput1.text) ?? 0;
      var input2 = int.tryParse(txtinput2.text) ?? 0;
      var input3 = int.tryParse(txtinput3.text) ?? 0;
      var harga = 700 * (input + input1 + input2 + input3);
      total = harga.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Paket Express'),
          automaticallyImplyLeading: false,
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => navbar()));
              }),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    Image.asset(
                      'images/clean.png',
                      height: 70,
                    ),
                    SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Baju",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp700",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.orange),
                            )
                          ],
                        )),
                    SizedBox(width: 100),
                    SizedBox(width: 50, height: 50, child: TextField(controller: txtinput, autocorrect: true, textAlign: TextAlign.center, decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.blue))))),
                  ]),
                  Row(children: [
                    Image.asset(
                      'images/clean.png',
                      height: 70,
                    ),
                    SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Celana",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp700",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.orange),
                            )
                          ],
                        )),
                    SizedBox(width: 100),
                    SizedBox(width: 50, height: 50, child: TextField(controller: txtinput1, autocorrect: true, textAlign: TextAlign.center, decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.blue))))),
                  ]),
                  Row(children: [
                    Image.asset(
                      'images/clean.png',
                      height: 70,
                    ),
                    SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jacket",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp700",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.orange),
                            )
                          ],
                        )),
                    SizedBox(width: 100),
                    SizedBox(width: 50, height: 50, child: TextField(controller: txtinput2, autocorrect: true, textAlign: TextAlign.center, decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.blue))))),
                  ]),
                  Row(children: [
                    Image.asset(
                      'images/clean.png',
                      height: 70,
                    ),
                    SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Topi",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Rp700",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.orange),
                            )
                          ],
                        )),
                    SizedBox(width: 100),
                    SizedBox(width: 50, height: 50, child: TextField(controller: txtinput3, autocorrect: true, textAlign: TextAlign.center, decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.blue))))),
                  ])
                ]),
              ]),
              SizedBox(
                height: 100,
              ),
              Row(children: [
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Total = $total",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: Text('Total'),
                      onPressed: ontotal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 100, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: Text('Simpan'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ])));
  }
}
