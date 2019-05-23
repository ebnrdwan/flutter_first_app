import 'package:flutter/material.dart';
import 'package:flutter_first_app/resources/AppColors.dart';

class VoteList extends StatefulWidget {
  List<VoteModel> _votes;

  VoteList(this._votes);

  // ignore: unused_element
  Widget _itemWidgetBuilder(BuildContext context, int index) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          Text(_votes[index].text),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  RaisedButton(
                    textColor: SWITCH_TRACK,
                    child: Text("yes"),
                  ),
                  RaisedButton(textColor: SWITCH_TRACK, child: Text("no"))
                ],
              ),
              Column(
                children: <Widget>[
                  Radio(
                    value: "yes",
                    activeColor: SWITCH_TRACK,
                    groupValue: "yes",
                  ),
                  Radio(
                    value: "no",
                    activeColor: SWITCH_TRACK,
                    groupValue: "no",
                    onChanged: (string) {},
                  ),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(textColor: BLUE_BG, child: Text("Submit")),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  textColor: SWITCH_TRACK, child: Text("show results")),
            ],
          )
        ],
      ),
    );
  }

  void changeRadio(String state) {
    print(state);
  }

  @override
  State<StatefulWidget> createState() {
    return VoteState();
  }
}

class VoteState extends State<VoteList> {
  List<VoteModel> models;

  Widget _itemWidgetBuilder(BuildContext context, int index) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          Text(models[index].text),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  RaisedButton(
                    textColor: SWITCH_TRACK,
                    child: Text("yes"),
                  ),
                  RaisedButton(textColor: SWITCH_TRACK, child: Text("no"))
                ],
              ),
              Column(
                children: <Widget>[
                  Radio(
                    value: "yes",
                    activeColor: SWITCH_TRACK,
                    groupValue: "yes",
                  ),
                  Radio(
                    value: "no",
                    activeColor: SWITCH_TRACK,
                    groupValue: "no",
                  ),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(textColor: BLUE_BG, child: Text("Submit")),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  textColor: SWITCH_TRACK, child: Text("show results")),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView.builder(
            itemCount: models.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return _itemWidgetBuilder(ctxt, Index);
            }));
  }

  @override
  void initState() {
    models = widget._votes;
    super.initState();
  }
}

class VoteModel {
  String text;
  String id;
  String result;

  VoteModel(this.text, this.id, this.result);
}
