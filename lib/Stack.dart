import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Page1());
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,

      // scaffold:::
      // skeleton widget that hold diff part of app
      home: Scaffold(
        backgroundColor: Colors.blueGrey,

        // Widgets serve as the foundation of the user interface
        // Widget created using classes or functions
        // Widgets are the central class hierarchy in the Flutter framework

        // stAck:::
        // stack differt widget in modern way,
        body: Stack(

          alignment: Alignment.center,

          children: [

            Container(
              height: 300,
                width: 280,
                color: Colors.black26,
              ),



               Container(
                 height: 100,
                 width: 80,
                color: Colors.black38,
              ),


            Container(
              height: 30,
              width: 28,
                color: Colors.black54,
              ),



          ],

        ),


        // property: class()
        appBar: AppBar(
          title: Text("TRY BOL",
            style: TextStyle(
                color: Colors.black38,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.black12,
          elevation: 1, // for shadow
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout)),],
        ),

      ),
    );
  }
}
