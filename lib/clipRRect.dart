import 'package:flutter/material.dart';

main(){
  runApp(clip());
}

class clip extends StatelessWidget {
  const clip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // YOU MUST SPECIFY A HOME WIDGET IN FLUTTER APP::::
       home: Scaffold(
         backgroundColor: Color(0x9D9595FF),
        body: Center(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
