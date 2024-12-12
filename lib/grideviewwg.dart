import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home:Gridevieweg() ,));
// }
class Gridevieweg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
           Card(
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Icon(Icons.account_box),
               Text("account_box")
             ],),
           ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.ac_unit),
              Text("ac_unit")
            ],),
          ),
          Card(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.access_time),
              Text("access_time")
            ],),
          ),
          Card(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.search),
              Text("account_box")
            ],),
          ),
          Card(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.settings),
              Text("account_box")
            ],),
          ),
          Card(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.pages),
              Text("pages")
            ],),
          )


        ],),
      );
  }

}