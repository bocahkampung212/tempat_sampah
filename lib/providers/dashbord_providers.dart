import 'package:flutter/material.dart';

class dashbordprovider with ChangeNotifier {
  int indexTombol = 0;

  void saatdiklik(int index){
    indexTombol = index;
    notifyListeners();
  }
}
