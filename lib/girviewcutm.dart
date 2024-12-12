import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
   runApp(DevicePreview(builder: (context)=>MaterialApp(
     useInheritedMediaQuery: true,
     home: Gridviewcustm(),
   )
   ));
}
class Gridviewcustm extends StatelessWidget{
  var icons=[Icons.settings,Icons.home,Icons.lock_clock,Icons.add_alert,
   Icons.backup,Icons.laptop,Icons.logout];
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
      appBar: AppBar(title: Text("gridviewcutm"),

      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(color: color[index],
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(FontAwesomeIcons.whatsapp),
                Text(name[index],style:  GoogleFonts.b612Mono(
                textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),),
              ],),
            );



          },childCount: name.length)),
    );
  }

}