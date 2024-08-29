import 'package:flutter/material.dart';

main(){
  runApp(grid());
}

class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // YOU MUST SPECIFY A HOME WIDGET IN FLUTTER APP::::
      home: Scaffold(
        backgroundColor: Color(0x9D9595FF),
        body: GridView.builder(
          // NO OF GRID YOU WANT:::
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
            return Square();
          },
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 300,
        color: Colors.grey,
      ),
    );
  }
}

