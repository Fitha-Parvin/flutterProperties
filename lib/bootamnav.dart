import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottamnav(),));
}
class bottamnav extends StatefulWidget{
  @override
  State<bottamnav> createState() => _bottamnavState();
}

class _bottamnavState extends State<bottamnav> {
   var screen=[
     Text("Home"),
     Text("Favorite"),
     Text("Settings"),
     Text("Notifications"),

   ];

   int index=1;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child: screen[index]),
     bottomNavigationBar: BottomNavigationBar(

        currentIndex: index,
       onTap:(tapindex){
          setState(() {
            index=tapindex;
          });
       } ,
       backgroundColor: Colors.yellow,
       selectedItemColor: Colors.green,
       unselectedItemColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
       items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.yellow),

       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite",backgroundColor: Colors.yellow),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.yellow),
       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications",backgroundColor: Colors.yellow),


     ],),
   );
  }
}