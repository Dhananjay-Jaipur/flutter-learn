import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(gesture());
}

class gesture extends StatefulWidget {
  const gesture({super.key});

  @override
  State<gesture> createState() => _gestureState();
}

class _gestureState extends State<gesture> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // YOU MUST SPECIFY A HOME WIDGET IN FLUTTER APP::::
      home: Scaffold(
        backgroundColor: Color(0x9D9595FF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 33,
              ),
            ),

            // SizedBox(height: 12),

            GestureDetector(
              onTap: () {
                setState(() {
                  n++;
                });
              },
              child: Icon(
                Icons.adb,
                size: 80,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
