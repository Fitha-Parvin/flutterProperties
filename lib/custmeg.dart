import 'package:aprilflutter/custmwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custmeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Custmwidgt(text: Text("welcome"),
          img: Image.asset("assets/images/bg2.jpg"),
        onpress: () {

        },),
    ),
  );
  }

}