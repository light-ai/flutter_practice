import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtubepractice/quest.dart';

class MainModel extends ChangeNotifier{
  String lightText = "wwwwww";
  List<Quest> quest = [];

  Future getQuestList() async{
    final snapshot = await FirebaseFirestore.instance.collection("quest").get();
    final docs = snapshot.docs;
    final quest = docs.map((doc) => Quest(doc)).toList();
    this.quest = quest;
    notifyListeners();
  }

  void changeLightText() {
    lightText = "ああああああ";
    notifyListeners();
  }
}

