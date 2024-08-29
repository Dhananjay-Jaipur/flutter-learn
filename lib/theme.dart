import 'dart:js';

import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(home: theme()));
}

class theme extends StatefulWidget {
  const theme({super.key});

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {

    ThemeData t = ThemeData(brightness: Brightness.dark);
    bool i = true;
    Color c = Colors.white;

    void CTheme() {
      setState(() {

        if (i == true) {
          t = ThemeData(brightness: Brightness.light);
          c = Colors.black54;
          i = false;
        }

        else {
          t = ThemeData(brightness: Brightness.dark);
          c = Colors.white;
          i = true;
        }

      });
    }


    return MaterialApp
      (

      theme: t,

      home: Scaffold(

        //backgroundColor: Theme.of(context).colorScheme.background,

        body: Center(
          child: MaterialButton(
            onPressed: CTheme,
            child: const Icon(
              Icons.mode_night,
              size: 100,
              color: c,
            ),
          ),
        ),
      ),
    );
  }
}
