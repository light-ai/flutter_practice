import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Quest {
  Quest(DocumentSnapshot doc) {
    this.title = doc.data()["title"];
    this.createdAt = doc.data()["createdAt"].toDate();
  }
  String title;
  DateTime createdAt;
}
