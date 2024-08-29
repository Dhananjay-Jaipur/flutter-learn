import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(home: Drag()));
}

class Drag extends StatefulWidget {
  const Drag({super.key});

  @override
  State<Drag> createState() => _DragState();
}

class _DragState extends State<Drag> {

   List tile = [
    'B',
    'U',
     '🫶',
    'D',
    'J',
  ];

  // reORDER METHOD::
  void updateList(int oldI, int newI){
    setState(() {

      int temp = tile.removeAt(oldI);
      tile.insert(newI, tile);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: const Text('             meri bubu ko cheda to 👺', style: TextStyle(color: Colors.white70),),
        backgroundColor: Colors.black54,
      ),

      body: ReorderableListView(
        children: [
          SizedBox(key: ValueKey(tile), height: 22),

          for(final t in tile)
            Container(
              margin: EdgeInsets.only(bottom: 8, left: 12, right: 12),
              key: ValueKey(t),

              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(22),
              ),

              child: ListTile(
                key: ValueKey(t),
                title: Text(t, style: const TextStyle(color: Colors.white, fontSize: 33),),
              ),
            )
        ],

        onReorder: (oldIndex, newIndex) => updateList(oldIndex, newIndex),
      ),

    );
  }
}
