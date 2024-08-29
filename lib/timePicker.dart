import 'dart:ffi';

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(home: Time()));
}

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {


  var now = TimeOfDay.now();

  void Show() {
      showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
      ).then((value){
        setState(() {
          now = value!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(
              now.format(context).toString(),
              style: TextStyle(
                fontSize: 80,
              ),
            ),

            // SizedBox(height: 22,),

            SizedBox(
              height: 55,
              width: 111,
              child: ElevatedButton(
                onPressed: Show,
                child: Text(
                  "-----",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 11,
                  shadowColor: Colors.blueGrey,
                  backgroundColor: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
