import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(animatedC());
}

class animatedC extends StatefulWidget {
  const animatedC({super.key});

  @override
  State<animatedC> createState() => _animatedState();
}

class _animatedState extends State<animatedC> {

  double bHeight = 240;
  double bWidth = 240;
  var c = Colors.blueGrey;

  void expandB(){
    setState(() {
      bHeight = 500;
      bWidth = 500;
    });
  }

  void changeColour(){
    setState(() {
      c = Colors.black26 as MaterialColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: GestureDetector(
            onTap: expandB,
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: bHeight,
              width: bWidth,
              color: c,
            ),
          ),
        ),
      ),
    );
  }
}
