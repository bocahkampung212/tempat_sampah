import 'package:flutter/material.dart';

class profilpanel extends StatelessWidget {
  const profilpanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.flaticon.com/free-icon/man_2202112')),
          SizedBox(height: 16),
          Text(
            'ryo wikky',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'adventure',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Email: ryowikkywirianto@example.com',
            style: TextStyle(fontSize: 13),
          ),
          Text(
            'Phone: +62 12187866839',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Alamat: JL.sedardadu',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
