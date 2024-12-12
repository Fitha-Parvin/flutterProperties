import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Homepage() ,
  debugShowCheckedModeBanner: false,));
}
class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List view"),
        actions: [
          
        ],
      ),
      body: ListView(children: [

        Card(color: Colors.red[200],
          child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.cyan,
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red[200],
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ), Card(color: Colors.cyan,
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red[200],
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.cyan,
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red[200],
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.cyan,
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red[200],
          child: ListTile(
            leading:CircleAvatar(backgroundImage:AssetImage("assets/images/profile.jpg"),),
            title: Text("arya"),
            subtitle: Text("945254534542"),
            trailing: Icon(Icons.call),
          ),
        )




      ],),
         );
  }
}