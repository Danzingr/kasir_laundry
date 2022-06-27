import 'package:flutter/material.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daftar Transaksi'),
        ),
        body: ListView(children: const <Widget>[
          Card(child: ListTile(title: Text('Transaksi 1'))),
        ]));
  }
}
