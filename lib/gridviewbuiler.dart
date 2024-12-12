import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Gridveiwbuilder(),));
}
class Gridveiwbuilder extends StatelessWidget{
  List<IconData> icons=[Icons.settings,Icons.home,Icons.lock_clock,FontAwesomeIcons.whatsapp,
    Icons.add_card,Icons.backup,Icons.laptop,Icons.logout];
  var name=["settings","Home","lock_clock","add_alert","add_card","backup","laptop","logout"];
  var color=[
    Colors.lightGreenAccent,
    Colors.pink,
    Colors.limeAccent,
    Colors.cyanAccent,
    Colors.lightBlueAccent,
    Colors.brown,
    Colors.deepPurpleAccent,
    Colors.redAccent

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
    ),
        itemBuilder: (context,index){
         return    Card(color: color[index],
           child: Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(icons[index]),
               Text(name[index])
             ],),
         );
        },itemCount: name.length,),
  );
  }

}
