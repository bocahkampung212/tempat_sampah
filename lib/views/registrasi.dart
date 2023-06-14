import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/views/login_view.dart';

class registrasi extends StatelessWidget {
  const registrasi({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(42, 235, 109, 1),
      body: Stack(
        children: [
          Text('Registrasi'),
          Stack(
            children: [
              Container(
                height: 1000,
                child: Card(
                    margin: EdgeInsets.only(
                      top: 120,
                      left: 25,
                      right: 25,
                      bottom: 100,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Nama Lengkap',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Alamat Rumah',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'NO.HandPhone',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Alamat Email',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Konfirmasi password',
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 250, 250),
                                  filled: true),
                            )),
                        ElevatedButton(
                            onPressed: (() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (bc) {
                                    return LoginView();
                                  },
                                ),
                              );
                            }),
                            child: Text('Daftar'))
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
