import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listsepertad(),));
}
class Listsepertad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var name=["manu","ram","meera","balu","arun","vipin"];
    var phone=["7988545481","79885454534","875746756","445446565","7667645646","5645654674"];
    var image=["assets/images/profile.jpg","assets/images/profile.jpg",
      "assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg","assets/images/profile.jpg"];
    var color=[Colors.yellow,Colors.green,Colors.deepPurpleAccent,Colors.pink,Colors.greenAccent,Colors.lightGreenAccent];
   return Scaffold(

     appBar: AppBar(
       title: Text("Listseparated"),
     ),
       body: ListView.separated(itemBuilder: (context,index){
         return Card(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
           color: color[index],
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
             title: Text(name[index]),
             subtitle: Text(phone[index]),
             trailing:Icon(Icons.call) ,
           ),
         );

       },
           separatorBuilder: (context,index){

   if(index %3==0){
   return Card(
   child: Text("welcome"),
   );
   }
   else{
   return SizedBox();
   }
   }, itemCount: name.length),
   );
  }

}