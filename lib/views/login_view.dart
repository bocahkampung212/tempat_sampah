import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/views/registrasi.dart';
import 'package:penjemputan_sampah/views/Dashbord.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(42, 190, 94, 1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 5),
              child: Center(
                  child: Image.asset(
                'assets/logo.png',
                width: 100,
              )),
            ),
            Text(
              'Aplikasi \nPenjemputan Sampah',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Stack(
              children: [
                Container(
                  height: 250,
                  child: Card(
                    margin: EdgeInsets.only(
                      top: 50,
                      left: 25,
                      right: 25,
                      bottom: 0,
                    ),
                    color: Color.fromARGB(255, 150, 235, 202),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0.5, 25, 0.5),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                                fillColor: Color.fromARGB(255, 250, 250, 250),
                                filled: true),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0.5, 25, 0.5),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                                fillColor: Color.fromARGB(255, 250, 250, 250),
                                filled: true),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (bc) {
                                return Dashbord();
                              }));
                            },
                            child: Text('login')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Don't have an Account ? ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(222, 10, 1, 1),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (bc) {
                                  return registrasi();
                                }));
                              },
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Register',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 255, 115, 0),
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
