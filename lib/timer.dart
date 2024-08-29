// RUN ON CHROME:::::

// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(Timer());
}

class Timer extends StatefulWidget {
  @override
  State<Timer> createState() => _TimerState();
}


class _TimerState extends State<Timer> {

  int time = 5;

  void Counter(){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(time.toString()),

              MaterialButton(
                onPressed: (){

                },

                child: Container(
                  height: 90,
                  width: 270,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
