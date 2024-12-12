import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custmwidgt extends StatelessWidget{
    final Text text;
    final Text ?subtitle;
    final Image img;
    final Color? clr;
    VoidCallback onpress;
    Custmwidgt({ required this.text, required this.img,this.clr,this.subtitle,required this.onpress});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Card(
       color: clr,
       child: ListTile(
         leading: img,
         title: text,
         subtitle: subtitle,
         onTap: onpress,

       ),
     ),
   );
  }

}