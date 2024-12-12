import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewcount extends StatelessWidget{
  var icons=[Icons.settings,Icons.home,Icons.lock_clock,Icons.add_alert,
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
      body: GridView.count(crossAxisCount: 3,
        children:List.generate(name.length, (index) {
          return Card(color: color[index],
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icons[index]),
                Text(name[index])
              ],),
          );
        }),),
    );
  }

}