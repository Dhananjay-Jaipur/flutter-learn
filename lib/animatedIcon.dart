import 'package:flutter/material.dart';

main() {
  runApp(icon());
}

class icon extends StatefulWidget {
  const icon({super.key});

  @override
  State<icon> createState() => _iconState();
}

class _iconState extends State<icon> with SingleTickerProviderStateMixin {
  // ANIMATION CONTROLER:::::
  late AnimationController aini;

  // INITIALZE CONTROLER:::::
  // build in function...
  void initState() {
    super.initState();

    aini = AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  bool playing = true;

  void action(){
    if(playing == true){
      aini.forward();
      playing = false;
    }
    else{
      aini.reverse();
      playing = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: action,
            child: AnimatedIcon(
              icon: AnimatedIcons.add_event,
              progress: aini,
              size: 222,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
