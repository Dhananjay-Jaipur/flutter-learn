import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

main() {
  runApp(MaterialApp(home: Side()));
}

class Side extends StatefulWidget {
  const Side({super.key});

  @override
  State<Side> createState() => _SideState();
}

class _SideState extends State<Side> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slidable(
            startActionPane: ActionPane(
              // A motion is a widget used to control how the pane animates.
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  // ONPRESSED IS DIFFERENT:::
                  onPressed: ((context) {}),

                  // FLEX CONTROL THE SIZE OF BUTTON::::
                 // flex: 2,
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.message,
                ),
                SlidableAction(
                  // ONPRESSED IS DIFFERENT:::
                  onPressed: ((context) {}),

                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.black54,
                  icon: Icons.phone,
                ),
              ],
            ),

            endActionPane: ActionPane(
                motion: StretchMotion(),
                children: [
                  SlidableAction(
                    // ONPRESSED IS DIFFERENT:::
                    onPressed: ((context) {}),

                    flex: 1,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete_outline,
                  ),
                ],
            ),

            child: Container(
              color: Colors.black12,
              child: const ListTile(
                title: Text(
                  "BuBu",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("+91 7597125883"),
                leading: Icon(
                  Icons.person,
                  size: 44,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
