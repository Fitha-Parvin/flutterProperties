import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Clippereg() ,));
}
class Clippereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body:ListView(
         children: [
           Container(
             child: Container(
               height: 150,
               width: 150,
               child: ClipRect(
                 clipBehavior: Clip.hardEdge,
                   child: Image(image: AssetImage("assets/images/bg.jpg"),)),
             ),
           ),
           SizedBox(height: 50,),
           Container(

             child: ClipRRect(
               borderRadius: BorderRadius.circular(60),
                 child: Image(image: AssetImage("assets/images/bg1.jpg"),)),

           ),
           SizedBox(height: 50,),
           Container(
             child: ClipOval(child: Image(image: AssetImage("assets/images/bg2.jpg"),)),
           )
         ],
       ) ,
     );
  }

}