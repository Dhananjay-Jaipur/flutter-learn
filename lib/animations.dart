import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

main(){
  runApp(MaterialApp(home: Anim()));
}

class Anim extends StatefulWidget {
  const Anim({super.key});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('https://app.lottiefiles.com/share/61dec4e1-5085-4cd4-afea-2e012b0eb06b'),
      ),
    );
  }
}
