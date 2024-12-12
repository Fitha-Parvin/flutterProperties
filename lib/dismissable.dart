import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: dismissebleeg(),));
}
class dismissebleeg extends StatelessWidget{
  var data=["Data1","Data2","Data3","Data4"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       title: Text("Dismisseble"),

     ),
     body: ListView.builder(itemBuilder: (context,index){
       return Dismissible(key: ValueKey(data),
           background: Container(color: Colors.red,),
           secondaryBackground: Container(color: Colors.green,),
           child:Column(
             children: [
               Container(color: Colors.yellow,
                 child: Center(
                   child: Text(data[index],style: TextStyle(fontSize: 30),),
                 ),

               ),

             ],
           ));

     },itemCount: data.length,),
   );
  }

}