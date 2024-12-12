import 'package:flutter/material.dart';

import 'gridviewcount.dart';
import 'listseperaetd.dart';
void main(){
  runApp(MaterialApp(home: Namedrouts(),
      routes: {
      'grid':(context)=>Gridviewcount(),
        'list':(context)=>Listsepertad(),
      },
  ));
}

class Namedrouts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Container(
         child: Wrap(
           children: [
             ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, 'grid');

             }, child: Text("Grid")),
             SizedBox(width: 30,),
             ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, 'list');
             }, child: Text("list"))
           ],
         ),
       ),
     ),
   );
  }

}