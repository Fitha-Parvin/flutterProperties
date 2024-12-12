import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Spalshnew(),
  ));
}

class Spalshnew extends StatefulWidget {
  @override
  State<Spalshnew> createState() => _SpalshnewState();
}

class _SpalshnewState extends State<Spalshnew> {
  @override
  void initState() {
     Timer((Duration(seconds: 3)), () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));

     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bgg.jpg"), fit: BoxFit.fill)),
        child: Center(
            child: Image(
          image: AssetImage("assets/images/Salad-icon.png"),
          height: 100,
          width: 100,
        )),
      ),
    );
  }
}
