import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {         
  const ToDoPage({super.key});

  @override  
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {  

  // ctronoller to get access what user typed, store data
  TextEditingController myController = TextEditingController();

  // greeting message
  String greetingMessage = "";

  // greet user
  void greetUser() {
    setState(() {
      greetingMessage = "hello, " + myController.text;
    });
  }

  @override  
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMessage
              ),

              TextField(
                controller: myController,
                decoration: InputDecoration (
                  border: OutlineInputBorder(),
                  hintText: "type your name",
                ),
              ),

              // button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              ),
            ],       
          ),
        ),
      ),
    );
  }
}