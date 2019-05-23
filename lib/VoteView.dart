import 'package:flutter/material.dart';
import 'package:flutter_first_app/resources/AppColors.dart';

class VoteList extends StatefulWidget {
  List<VoteModel> _votes;

  VoteList(this._votes);

  // ignore: unused_element
  Widget _itemWidgetBuilder(BuildContext context, int index) {
    return Card(
      elevation: 2.0,
      semanticContainer: true,
      child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _votes[index].text,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      textColor: SWITCH_TRACK,
                      child: Text("yes"),
                    ),
                    RaisedButton(textColor: SWITCH_TRACK, child: Text("no"))
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Column(
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
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              FlatButton(textColor: BLUE_BG, child: Text("Submit")),
              SizedBox(
                width: 20,
              ),
              FlatButton(textColor: SWITCH_TRACK, child: Text("show results")),
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
      borderOnForeground: true,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(-0.9, 1),
            margin: EdgeInsets.only(left: 8,top: 20,right: 0,bottom: 25),
            child: Text(
              models[index].text,
              style: TextStyle(color: Colors.black, fontSize: 24),
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FlatButton(
                    textColor: SWITCH_TRACK,
                    child: Text("Yes",style: TextStyle(fontSize: 17)),
                  ),
                  FlatButton(textColor: SWITCH_TRACK, child: Text("No"style: TextStyle(fontSize: 17)))
                ],
              ),
              Column(
                children: <Widget>[
                  Radio(
                    value: "Yes",
                    activeColor: SWITCH_TRACK,
                    groupValue: "Yes",
    onChanged: ,
                  ),
                  Radio(
                    value: "No",
                    activeColor: SWITCH_TRACK,
                    groupValue: "No",
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ButtonTheme.bar(
                child: ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        'SUBMIT',
                        semanticsLabel: 'Submit',
                        style: TextStyle(fontSize: 17),
                      ),
                      textColor: Colors.blue.shade500,
                      onPressed: () {
                        print('pressed');
                      },
                    ),
                    FlatButton(
                      child: Text('SHOW RESULTS',
                          semanticsLabel: 'Show Results',
                          style: TextStyle(fontSize: 17)),
                      textColor: Colors.grey.shade500,
                      onPressed: () {
                        print('pressed');
                      },
                    ),
                  ],
                ),
              )
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
