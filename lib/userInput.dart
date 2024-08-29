import 'package:flutter/material.dart';

main(){
  runApp(UserInput());
}

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  // USE TO GET TEXT FROM THE TEXTFIELD::::
  final textGet = TextEditingController();

  String mind = "my MIND";

  void Mind(){
    setState(() {
      mind = textGet.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Padding(
          padding:  EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        mind,
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
              ),

              TextField(
                controller: textGet,
                decoration: InputDecoration(
                  hintText: "what is in your mind ?",
                  border: OutlineInputBorder(),

                  // CLEAR TEXT ON THE TEXT FIELD::::::
                  suffixIcon: IconButton(
                    onPressed: (){
                      textGet.clear();
                    },
                    icon: Icon(Icons.clear),
                  )
                ),
              ),

                  MaterialButton(
                      onPressed: Mind,
                    child: Container(
                      height: 28,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
