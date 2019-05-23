import 'package:flutter/material.dart';
import 'package:flutter_first_app/products.dart';
import './ProductControl.dart';
import './NewScreen.dart';
import './TestAnim.dart';

class StateWidget extends State<TestStatFull> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.mproducts);
    super.initState();
  }

  void _addproduct(String name) {
    setState(() {
      _products.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "test title",
        theme: ThemeData(
            backgroundColor: Colors.deepOrange,
            dividerColor: Colors.amberAccent),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("toolBar"),
          ),
          body: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("new screen to goo"),
                  onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FadeAppTest()),
                  ); //end push


                  }),
              ProductControl(_addproduct),
              Expanded(
                child: Products(_products),
              )
            ],
          ),
        ));
  }
}

class TestStatFull extends StatefulWidget {
  String mproducts;

  TestStatFull({this.mproducts});

  @override
  State<StatefulWidget> createState() {
    return StateWidget();
  }
}
