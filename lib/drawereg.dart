import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Drawereg() ,));
}
class Drawereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellow,
          title: Text("drawer"),
        ),
     drawer: Drawer(
       backgroundColor: Colors.yellow[200],
       child: ListView(
         children: [
          UserAccountsDrawerHeader(accountName: Text("arya"), accountEmail: Text("arya@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpg"),),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpg"),),

            ],
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.fill)),
          )
           ,
           ListTile(
             leading: Icon(Icons.home),
             title: Text("home"),
           ),
           ListTile(
             leading: Icon(Icons.upload),
             title: Text("uploads"),
           ),
           ListTile(
             leading: Icon(Icons.offline_bolt),
             title: Text("offline"),
           ),
           ListTile(
             leading: Icon(Icons.settings),
             title: Text("setting"),
           ),
           ListTile(
             leading: Icon(Icons.logout),
             title: Text("logout"),
           ),




         ],
       ),
     ),
     body: Center(
       child: Text("welcome"),
     ),
   );
  }
  
}