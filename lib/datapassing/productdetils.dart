import 'package:aprilflutter/datapassing/dammydata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productdetails extends StatefulWidget {
  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final data = dummyProducts.firstWhere((prduct) => prduct['id'] == id);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Image(
              image: AssetImage("${data['image']}"),
            ),
          ),
          Text(data['name']),
          Text(data['description']),
          Text("${data['prize']}")
        ],
      ),
    );
  }
}
