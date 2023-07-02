import 'package:flutter/material.dart';

class profilpanel extends StatefulWidget {
  const profilpanel({super.key});

  @override
  State<profilpanel> createState() => _profilpanelprovider();
}

class _profilpanelprovider extends State<profilpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('profil'),
        ),
        body: Center(
          child: Text(
            'halaman profil',
          ),
        ));
  }
}
