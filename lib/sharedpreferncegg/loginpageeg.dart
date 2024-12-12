import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

void main(){
  runApp(MaterialApp(home:sharedprefernce() ,));
}
class sharedprefernce extends StatefulWidget{
  @override
  State<sharedprefernce> createState() => _sharedprefernceState();
}

class _sharedprefernceState extends State<sharedprefernce> {
  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController  password=TextEditingController();

  late bool newuser;
  @override
  void initState() {
    checkuser();
    super.initState();
  }

  void checkuser() async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser')?? true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
               controller: username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "UserName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
               controller: password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String uname=username.text;
                String paswrd=password.text;
                //
              if(uname!='' && paswrd !=''){
                 print("login Success");
                 data.setString("username", uname);
                 data.setBool('newuser',false);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Home()));
               }
              },   child: Text("Log_In"),

            )
          ],
        ),
      ),
    );
  }
}