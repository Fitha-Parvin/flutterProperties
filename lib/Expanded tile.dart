import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandedtileeg(),));
}
class Expandedtileeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(title: Text("colors"),
          subtitle: Text("type of color"),
          children: [
            ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),

          ],),
          ExpansionTile(title: Text("vegitables"),
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),

            ],),
        ],
      ),
    );
  }

}