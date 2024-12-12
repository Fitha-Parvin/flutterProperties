import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Sliverseg(),));
}
class Sliverseg extends StatefulWidget{
  @override
  State<Sliverseg> createState() => _SliversegState();
}

class _SliversegState extends State<Sliverseg> {
  var name=["manu","ram","meera","balu","arun","vipin","manu","ram","meera","balu","arun","vipin","manu","ram","meera","balu","arun","vipin"];
  var phone=["7988545481","79885454534","875746756","445446565","7667645646","5645654674","7988545481","79885454534","875746756","445446565","7667645646","5645654674","7988545481","79885454534","875746756","445446565","7667645646","5645654674"];
  var image=["assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg"];
  var color=[Colors.yellow,Colors.green,Colors.deepPurpleAccent,Colors.pink,Colors.greenAccent,Colors.lightGreenAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverAppBar(

            backgroundColor: Colors.blue[200],
            title: Text("Custom Appbar"),
            floating: true,
            pinned: true,

            actions: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.favorite)
              ),

            ],
             bottom: AppBar(backgroundColor: Colors.blue[200],

              title: Container(color: Colors.white,
                height: 40,

                child: TextField(
                  decoration: InputDecoration(

                    border: InputBorder.none,

                    hintText: "Search somthing",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
              List.generate(name.length, (index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
                    title:Text(name[index]) ,
                    subtitle: Text(phone[index]),

                  ),
                );
              }
          )
          )
          )

        ]






      )

    );
  }
}