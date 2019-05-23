import 'package:flutter/material.dart';
import 'package:flutter_first_app/VoteView.dart';
import 'package:flutter_first_app/resources/AppColors.dart';

class UserVoteView extends StatelessWidget {
  List<VoteModel> _models = [
    VoteModel("are you ready", "1", "yes"),
    VoteModel("are you ready", "1", "yes"),
    VoteModel("are you ready", "1", "yes"),
    VoteModel("are you ready", "1", "yes"),
    VoteModel("are you ready", "1", "yes"),
    VoteModel("are you ready", "1", "yes")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: BLUE_WHITE,
              title: Text("user vote"),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "Vote List",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Expanded(child: VoteList(_models)),
              ],
            )) //home
        );
  }
}
