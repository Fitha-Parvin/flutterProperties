import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home:listcustm2() ,));
// }
class listcustm2 extends StatelessWidget {

  var name=["manu","ram","meera","balu","arun","vipin"];
  var phone=["7988545481","79885454534","875746756","445446565","7667645646","5645654674"];
  var image=["assets/images/profile.jpg","assets/images/profile.jpg",
    "assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg"];
  var color=[Colors.yellow,Colors.green,Colors.deepPurpleAccent,Colors.pink,Colors.greenAccent,Colors.lightGreenAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListviewCustm"),),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
              List.generate(name.length, (index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
                    title:Text(name[index]) ,
                    subtitle: Text(phone[index]),

                  ),
                );
              }))),
    );
  }

}