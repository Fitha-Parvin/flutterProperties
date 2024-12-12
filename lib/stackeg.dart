import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Stackeg() ,));
}
class Stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     body: Stack(
       children: [
         Container(color: Colors.red,height: double.infinity,width: double.infinity,),
         Positioned(child: Container(color: Colors.green,),
          width: 100
         ,height: 100,
         left: 100,
         top: 150,),
         Positioned(child: Container(color: Colors.blue),
         height: 100,
         width: 100,
         right: 100,
           top: 150,
         ),


       ],
     ),
  );
  }

}