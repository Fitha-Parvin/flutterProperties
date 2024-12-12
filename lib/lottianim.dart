import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottianim(),));
}
class Lottianim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/anim/Animati.json"),

        ),
          );
  }

}