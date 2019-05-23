import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  Function _addProductWith;

  ProductControl(this._addProductWith);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: RaisedButton(
        textColor: Theme.of(context).accentColor,
        child: Text("title"),
        onPressed: () {
          _addProductWith("new line ");
        },
      ),
    );
  }
}


