import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:flexible() ,));
}
class flexible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          Flexible(flex: 2,
              child: Container(color: Colors.red,)),
          Flexible(flex: 4,
              child: Container(color: Colors.green,)),
          Flexible(flex: 2,
              child: Container(color: Colors.blue,))
        ],
      ),
    ),
  );

  }

}