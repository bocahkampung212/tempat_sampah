import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/providers/Informasi.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(72, 238, 130, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                    height: 100,
                    child: SizedBox(
                    height: 50,),
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
                            Text('Hi, ryo wikky'),
                            Text('ryowikky@gmail.com')
                          ],
                        )
                      ],
                    )),
            
              ]),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    ),
                    Text('Informasi'),
                    Padding(padding: EdgeInsets.only(top: 20, left: 50, right: 100)),
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
                          height: 105,
                          width: double.infinity,
                        ),
                        
                    ),
        
                ),
               
               Container(
                  padding:EdgeInsets.only(top: 10, left: 10,
                  right: 10),
                  child: Wrap(
                          children: [
                            tombolMenu(
                            icon: Icon(Icons.calendar_month, size: 25,),
                            ),
                            tombolMenu(
                              icon: Icon(Icons.inbox, size: 25,),
                            ),
                            tombolMenu(
                              icon: Icon(Icons.location_city, size: 25,),
                            ),
                            tombolMenu(
                              icon: Icon(Icons.comment, size: 25,),
                            ),
                      
                          ],
                        ),
                     
                ),
                Container(
                    child: Card(
                  margin: EdgeInsets.only(
                    top: 6,
                    right: 25,
                    left: 25,
                  ),
                  color: Color.fromRGBO(238, 233, 233, 0.466),
                  child: SizedBox(
                    width: double.infinity,
                    height: 105,
                  ),
                  
                ),
        
                ),
            ],
          ),
        ));
  }
}

class tombolMenu extends StatelessWidget {
  final Widget? icon;
  const tombolMenu({
    super.key,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.only(top:5, right: 20, left: 20),
      child: Padding(padding: const EdgeInsets.all(15.0),
      child: this.icon
      )
    );
  }
}
