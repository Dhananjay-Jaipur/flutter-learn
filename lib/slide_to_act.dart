import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

main(){
  runApp(MaterialApp(home: Slide()));
}

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SlideAction(
              // to change shape
              borderRadius: 33,

              // control shodow
              elevation: 11,

              // control color
              innerColor: Colors.white,
              outerColor: Colors.purple,

              sliderButtonIcon: const Icon(Icons.ice_skating_outlined),

              text: 'slide',

              // IF YOU DOT WANT BUTTON TO ROTATE::
              sliderRotate: false,

              // TO SHOW SUBMIT ACTION::::
              onSubmit: (){},
            ),
          )
        ],
      ),
    );
  }
}
