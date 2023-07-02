import 'package:flutter/material.dart';

class Settingpanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 230, 127),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
              title: Text(' notifikasi'),
              value: false,
              onChanged: (newValue) {}),
          SwitchListTile(
            title: Text(' Mode Gelap'),
            value: false,
            onChanged: (Value) {
              if (false) {
              } else {}
            },
          ),
        ],
      ),
    );
  }
}
