import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:penjemputan_sampah/views/Dashbord.dart';

class Informasi extends StatelessWidget {
  const Informasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 240, 129),
        appBar: AppBar(
            leading: BackButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (bc) {
                return Dashbord();
              }));
            }),
            title: Text('Informasi Penjemputan')));
  }
}
