import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ChekcedBoxeg() ,));
}
class ChekcedBoxeg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Checkedboxstate();
}

class Checkedboxstate  extends State<ChekcedBoxeg>{
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child: Checkbox(
       checkColor: Colors.red,
       value: ischecked,
       onChanged: (bool? value) {
         setState(() {
           ischecked=value!;
         });
       },),),
   );

  }
}