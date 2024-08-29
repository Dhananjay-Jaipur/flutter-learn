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

        // list wiew:::
        // builder automaticaly create list
        // by default it scroll in vertical direction,
        body: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) => ListTile(
                  title: Text(index.toString()),
                )
        ),

        // property: class()
        appBar: AppBar(
          title: Text(
            "TRY BOL",
            style: TextStyle(
                color: Colors.black38,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black12,
          elevation: 1,
          // for shadow
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}
