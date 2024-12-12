import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: backpress(),));
}
class backpress extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Future<bool>showdailogpop()async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Do you want to exit !"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No")),

          ],
        );
      });

    }
    return WillPopScope( onWillPop: showdailogpop,
      child: Scaffold(
      body:
      Center(child: Text("welcome to flutter")),),);
  }

}