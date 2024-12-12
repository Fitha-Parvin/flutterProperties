import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Loginpage()
    ,debugShowCheckedModeBanner: false,));
}
class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  Container(
       color: Colors.yellow[100],
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 150,right: 120),
             child: Text("Login page",style: TextStyle(color: Colors.red,fontSize: 40),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 70,right: 70,top: 100),
             child: TextField(
               decoration: InputDecoration(
               hintText: "username",
                 prefixIcon: Icon(Icons.person),
                 labelText: "Username",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
               ),

             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 70,right: 70,top: 40),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "password",
                 labelText: "Password",
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: Icon(Icons.visibility_off),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
               ),

             ),
           ),
            SizedBox(height: 50,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.red, minimumSize: Size(200,60),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                onPressed: (){

            }, child: Text("Login")),
           SizedBox(height: 50,),
           TextButton(onPressed: (){}, child: Text("Not a user ? create an  Account "))



         ],
       ),
     )  );
  }

}