import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MaterialApp(
  home: MyRiveAnimation(),
));

class MyRiveAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.network(
          'assets/anim/jeep.riv', // https://rive.app/community/2732-5606-clean-the-car/
          fit: BoxFit.cover,
          stateMachines: ['Motion'],
        ),
      ),
    );
  }
}