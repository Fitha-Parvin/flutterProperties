import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sampleui(),
  ));
}

class Sampleui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.fill)
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image(image: AssetImage("assets/images/Salad-icon.png"),height: 100,width: 100,),
            Text("Facebook")
          ],
        ),
      ),
    );
  }
}
