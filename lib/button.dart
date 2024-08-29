import 'package:flutter/material.dart';

void main() {
  runApp(const Page1());
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  void tab(){
    appBar: AppBar(
        title: const Text("somebody tabed me 🫢",
        style: TextStyle(
        color: Colors.transparent,
        fontSize: 23,
        fontWeight: FontWeight.bold
    ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,

      // scaffold:::
      home: Scaffold(
        backgroundColor: Colors.blueGrey,

        // Widgets serve as the foundation of the user interface
        // Widget created using classes or functions
        // Widgets are the central class hierarchy in the Flutter framework

        // gesture detector:::
        // adding functionality/action to the button, icon
        body: Center(
          child: GestureDetector(
            // their are also other geture

            onLongPress: (){
              print("niooooooo....");
            },

            onTap: tab, //by functon

            child: Container(
              height: 200, width: 200,
              decoration: BoxDecoration(
                color: Colors.black12,
                // to make rounded corner
                borderRadius: BorderRadius.circular(23),
              ),

            ),
          ),

        ),

      ),

    );
  }

}