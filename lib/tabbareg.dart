import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grideviewwg.dart';
import 'listseperaetd.dart';
import 'listviewcustm2.dart';
void main(){
  runApp(MaterialApp(home:Tabbareg() ,));
}
class Tabbareg extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(title: Text("Tabbar Example"),
       backgroundColor: Colors.green,
       bottom: TabBar(
         isScrollable: true,
         indicatorSize: TabBarIndicatorSize.tab,
         dividerColor: Colors.cyan,
         indicatorColor: Colors.red,
         unselectedLabelColor: Colors.blue,
         labelColor: Colors.yellow,
         tabs:
         [

         Tab(icon: Icon(Icons.camera_alt,size: 40,),),
         Tab(text: "Status",),
         Tab(text: "chat",),
         Tab(text: "Conatact",)

       ],
       ),),
           body: TabBarView(children: [
             Center(child: Text("camera",),),
             Listsepertad(),
             Gridevieweg(),
             listcustm2(),

           ],),
     ),
   );
  }

}