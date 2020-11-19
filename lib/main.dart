import 'package:flutter/material.dart';
import 'package:flutter_youtubepractice/main_model.dart';
import 'package:flutter_youtubepractice/quest.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel()..getQuestList(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("コリアンダー"),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              final quest = model.quest;
              return Center(
                child: ListView(
                    children:
                    quest.map((que) => ListTile(
                      title: Text(que.title),
                      subtitle: Text(que.createdAt.toString()),
                    )).toList()
                ),
                // child: Column(
                //   children: [
                //     Text(
                //       model.lightText,
                //       style: TextStyle(
                //         fontSize: 30,
                //       ),
                //     ),
                //     RaisedButton(
                //       child: Text("ボタン"),
                //       onPressed: (){
                //         //ここで何か
                //         model.changeLightText();
                //       },
                //     ),
                //
                //   ],
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
