import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("images/iv.PNG"),
          Text(products[index]),
        ],
      ),
    );
  }

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: products.length,
    );
  }
}
