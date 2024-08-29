// RUN ON CHROME:::::

import 'package:flutter/material.dart';

main(){
  runApp(chrome());
}

class chrome extends StatelessWidget {
  const chrome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            children: [
              Text('HEIGHT - ' + MediaQuery.of(context).size.height.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
              Text('WIDTH - ${MediaQuery.of(context).size.width}'),
              // $ - interpolation
              Text('HEIGHT - ' + MediaQuery.of(context).size.aspectRatio.toString(), style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
