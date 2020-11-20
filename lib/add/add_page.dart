import 'package:flutter/material.dart';
import 'package:flutter_youtubepractice/main_model.dart';
import 'package:flutter_youtubepractice/quest.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'add_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AddPage());
}

class AddPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddModel>(
      create: (_) => AddModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("コリアンダー"),
        ),
        body: Consumer<AddModel>(
          builder: (context, model, child) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "クエスト入力",
                      hintText: "激辛まおぼー豆腐",
                    ),
                  ),
                  RaisedButton(
                      child: Text("追加する"),
                      onPressed: () {

                      }),
                ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
