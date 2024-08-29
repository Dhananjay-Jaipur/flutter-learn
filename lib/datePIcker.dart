import 'package:flutter/material.dart';

main() {
  // IF YOU DONT USE THIS::::
  // ERROR: Date widgets require MaterialLocalizations to be provided by a Localizations widget ancestor
  runApp(MaterialApp(home: Date()));
}

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {

  var now = DateTime.now();

  void Show() {
    setState(() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
      ).then((value){
        setState(() {
          now = value!;   // TO UPDATE VARIABLE:::: remember!
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                  now.toString(),
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.black26,
                ),
              ),
            ),

            SizedBox(height: 20,),

            Center(
              child: ElevatedButton(
                onPressed: Show,
                child: Text("-------"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
