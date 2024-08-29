import 'package:flutter/material.dart';

main(){
  runApp(slider());
}

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {

  double n = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                n.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            Slider(
              // value :::: A DOUBLE VARIABLE
                value: n,
                min: 0,
                max: 10,
                thumbColor: Colors.black,
                onChanged: (value){
                  setState(() {
                    n = value;
                  });
                },
            ),
          ],
        ),
      ),
    );
  }
}
