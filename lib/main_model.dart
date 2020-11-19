import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String lightText = "wwwwww";

  void changeLightText() {
    lightText = "ああああああ";
    notifyListeners();
  }
}
