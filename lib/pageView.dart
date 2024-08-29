import 'package:flutter/material.dart';

main(){
  runApp(pageView());
}

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: PageView(
          controller: PageController(),
          scrollDirection: Axis.vertical,
          children: [
            Post1(),
            Post2(),
            Post3()
          ],
        ),
      ),
    );
  }
}


class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
    );
  }
}


class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
    );
  }
}

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}