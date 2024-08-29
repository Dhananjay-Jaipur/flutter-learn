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

        // Row:::
        // widget to display in horizontal way,
        // and column are for vertical way
        body: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            // expand:::
            // it is a container that autosize, in container we have to specify size
            // it occupy the whole size

            Expanded(
              child: Container(
                color: Colors.black26,
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.black38,
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.black54,
              ),
            ),

            Expanded(
              // flex:::
              // expand the container
              flex: 4,
              child: Container(
                color: Colors.black,
              ),
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
