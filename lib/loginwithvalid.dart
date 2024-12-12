import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
void main(){
  runApp(MaterialApp(home: Loginvalid()
    ,debugShowCheckedModeBanner: false,));
}
class Loginvalid extends StatefulWidget{
  @override
  State<Loginvalid> createState() => _LoginvalidState();
}

class _LoginvalidState extends State<Loginvalid> {
   GlobalKey<FormState> fromkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          color: Colors.yellow[100],
          child: Form(
            key:fromkey ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 150,right: 120),
                  child: Text("Login page",style: TextStyle(color: Colors.red,fontSize: 40),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70,top: 100),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "username",
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                    ),
                  validator:(email){
                      if(email!.isEmpty || !email.contains("@") || !email.contains(".")){
                        return "please Enter valid Email";
                      }
                      else{
                        return null;
                      }
                  },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70,top: 40),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        hintText: "password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(showpass){
                              showpass=false;
                            }
                            else{
                              showpass=true;
                            }
                          });
                        }, icon:Icon( showpass==true ? Icons.visibility_off :Icons.visibility)),

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                    ),
                  validator: (password){
                      if(password!.isEmpty || password.length<6){
                         return "please Enter valid password";
                      }

                  },
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.red, minimumSize: Size(200,60),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    onPressed: (){
                     var valid= fromkey.currentState!.validate();
                     if(valid){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                     }
                     else{
                       return null;
                     }

                    }, child: Text("Login")),
                SizedBox(height: 50,),
                TextButton(onPressed: (){

                }, child: Text("Not a user ? create an  Account "))



              ],
            ),
          ),
        )  );
  }
}