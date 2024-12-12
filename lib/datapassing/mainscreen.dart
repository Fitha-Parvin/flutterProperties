import 'package:aprilflutter/datapassing/productdetils.dart';
import 'package:flutter/material.dart';

import 'dammydata.dart';
void main(){
  runApp(MaterialApp(home:Maunscreen() ,
    routes: {
    'secondpage':(context)=> productdetails()
    },
  ));
}
class Maunscreen extends StatefulWidget{
  @override
  State<Maunscreen> createState() => _MaunscreenState();
}

class _MaunscreenState extends State<Maunscreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: dummyProducts.map((product)=>GestureDetector(
      child: Center(
        child: Column(
          children: [
            Text("${product['name']}"),
            Image(image: AssetImage("${product['image']}"))

          ],
        ),
      ),
        onTap: ()=>getproduct(context,product['id']),
      )).toList()
    ),
  );
  }

  getproduct(BuildContext context, product) {
    Navigator.pushNamed(context, 'secondpage',arguments: product);

  }
}