import 'package:flutter/material.dart';

main() {
  runApp(Sappbar());
}

class Sappbar extends StatelessWidget {
  const Sappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(

              backgroundColor: Colors.cyan,

              // APP BAR STILL REMAIN WHEN YOU SCROLE DOWN:::
              pinned: true,

              floating: true,

              title: Text("S L I V E R"),
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.cyanAccent,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(26),
                child: Container(
                  color: Colors.cyan,
                  height: 400,
                  width: 400,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(26),
                child: Container(
                  color: Colors.cyan,
                  height: 400,
                  width: 400,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(26),
                child: Container(
                  color: Colors.cyan,
                  height: 400,
                  width: 400,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
