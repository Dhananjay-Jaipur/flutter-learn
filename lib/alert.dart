// RUN ON CHROME:::::

// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(home: alert()));
}

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  void Show(){
    showDialog(
      context: context as BuildContext,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("KYA HAI BE  👺"),
            content: Text("............."),
            actions: [
              MaterialButton(
                onPressed: (){},
                child: Text("cancel"),
              ),
              MaterialButton(
                onPressed: (){},
                child: Text("ok"),
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: MaterialButton(
            onPressed: (){
              setState(() {
                Show();
              });
            },
            child: Container(
              color: Colors.deepPurple,
              height: 80,
              width: 260,
            ),
          ),
        ),
      ),
    );
  }
}
