import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Exandedeg(),));
}
class Exandedeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(color: Colors.red,height: 100,width: double.infinity,),
          Expanded(child: Container(color: Colors.yellow,height: 100,width: double.infinity,)),
          Expanded(child: Container(color: Colors.blue,height:100,width: double.infinity,))
        ],
      ),
    );
  }

}