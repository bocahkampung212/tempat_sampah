import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/providers/Informasi.dart';
import 'package:penjemputan_sampah/providers/dashbord_providers.dart';

import 'package:penjemputan_sampah/providers/profil_panel.dart';
import 'package:penjemputan_sampah/providers/setting_panel_.dart';
import 'package:provider/provider.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    final panels = [dashbordPanel(), Settingpanel(), profilpanel()];
    return Consumer<dashbordprovider>(builder: (context, provider, widget) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 70, 230, 142),
        bottomNavigationBar: navigatorBawah(),
        body: panels[provider.indexTombol],
      );
    });
  }
}

class dashbordPanel extends StatelessWidget {
  const dashbordPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 100,
              child: SizedBox(
                height: 50,
              ),
            ),
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
                        Text(
                          'Hi, ryo wikky',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ryowikky@gmail.com',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              ),
              Text('Informasi'),
              Padding(padding: EdgeInsets.only(top: 30, left: 50, right: 100)),
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
                right: 25,
                left: 25,
              ),
              color: Color.fromRGBO(238, 233, 233, 0.466),
              child: SizedBox(
                height: 125,
                width: double.infinity,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Wrap(
              children: [
                tombolMenu(
                  icon: Icon(
                    Icons.calendar_month,
                    size: 45,
                  ),
                ),
                tombolMenu(
                  icon: Icon(
                    Icons.inbox,
                    size: 45,
                  ),
                ),
                tombolMenu(
                  icon: Icon(
                    Icons.location_on,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Text(
              'Berita',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              margin: EdgeInsets.only(
                top: 5,
                right: 25,
                left: 25,
              ),
              color: Color.fromRGBO(238, 233, 233, 0.466),
              child: Container(
                child: SizedBox(
                  width: double.infinity,
                  height: 25,
                ),
              ),
            ),
          ),
          Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/gambar1.jpg',
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/gambar2.jpg',
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/gambar3.jpg',
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              margin: EdgeInsets.only(
                top: 5,
                right: 25,
                left: 25,
              ),
              color: Color.fromRGBO(238, 233, 233, 0.466),
              child: Container(
                child: SizedBox(
                  width: double.infinity,
                  height: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class navigatorBawah extends StatelessWidget {
  const navigatorBawah({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final p = context.read<dashbordprovider>();
    return BottomNavigationBar(
      currentIndex: p.indexTombol,
      onTap: (value) {
        p.saatdiklik(value);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'pengaturan'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profil',
        ),
      ],
    );
  }

  Widget inistate(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan'),
      BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'profil'),
    ]);
  }
}

class tombolMenu extends StatelessWidget {
  final Widget? icon;
  const tombolMenu({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(top: 5, right: 20, left: 20),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: this.icon,
        ));
  }
}
