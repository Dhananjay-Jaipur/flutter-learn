import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Tabbar());
}

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("T A B  B A R"),
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.search, color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.black,),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: Center(child: Text("HOME")),
                  ),
              
                  Container(
                    child: Center(child: Text("SEARCH")),
                  ),
              
                  Container(
                    child: Center(child: Text("SETTINGS")),
                  ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
