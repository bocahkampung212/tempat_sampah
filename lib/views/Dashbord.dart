import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/providers/Informasi.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(72, 238, 130, 1),
        body: Stack(children: [
          Image.asset(
            'assets/background.png',
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset('assets/logo.png', width: 60),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Hi, ryo wikky'),
                      Text('ryowikky@gmail.com')
                    ],
                  )
                ],
              )),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 380, left: 20, right: 20),
              ),
              Text('Informasi'),
              Padding(padding: EdgeInsets.only(top: 380, left: 50, right: 100)),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (bc) {
                      return Informasi();
                    }));
                  },
                  child: Text('Selengkapnya')),
            ],
          ),
          Container(
              child: Card(
            margin: EdgeInsets.only(
              top: 200,
              right: 25,
              left: 25,
            ),
            color: Color.fromRGBO(238, 233, 233, 0.466),
            child: SizedBox(
              width: 1000,
              height: 150,
            ),
          )),
          Container(
              child: Card(
            margin: EdgeInsets.only(
              top: 400,
              right: 25,
              left: 25,
            ),
            color: Color.fromARGB(183, 59, 182, 240),
            child: SizedBox(
              width: 1500,
              height: 150,
            ),
          ))
        ]));
  }
}
