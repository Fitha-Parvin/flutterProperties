import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Alertboxeg(),));
}
class Alertboxeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: ElevatedButton(onPressed: (){
         showDialog(context: context, builder: (context){
           return AlertDialog(
             title: Text("Exit.!!!!"),
             content: Text("Do yoy want to Exit!"),
             actions: [
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               },
                   child: Text("yes")),
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               },
                   child: Text("No")),
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               },
                   child: Text("cancel"))


             ],
           );
         });
       }, child:Text("button")),
     ),
   );
  }
}