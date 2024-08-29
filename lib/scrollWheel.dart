// SIZE HI NAHI CHANGE HO RAHA::


import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(home: Scrol()));
}

class Scrol extends StatefulWidget {
  const Scrol({super.key});

  @override
  State<Scrol> createState() => _ScrolState();

}

class _ScrolState extends State<Scrol> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ListWheelScrollView.useDelegate(
          itemExtent: 33,
          perspective: 0.01, // HOW MUCH TO INCLINE (efect of curve):::
          diameterRatio: 1.5,
          childDelegate: ListWheelChildBuilderDelegate(
              childCount: 30,
              builder: (context, index) {
                return  tile(
                  n: index,
                );
              }), // diameter of wheel:::
        ),
      ),
    );
  }
}

class tile extends StatelessWidget {

  int n = 0;

   tile({super.key, required this.n});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 245,
      height: 66,
      // color: Colors.black45,
      child: Center(
        child: Text(
          n.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
