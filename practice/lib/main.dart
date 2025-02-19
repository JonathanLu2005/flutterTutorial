import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const ReactionTimeApp());
}

class ReactionTimeApp extends StatelessWidget {
  const ReactionTimeApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReactionTimeScreen(),
    );
  }
}

class ReactionTimeScreen extends StatefulWidget {
  @override 
  _ReactionTimeScreenState createState() => _ReactionTimeScreenState();
}

class _ReactionTimeScreenState extends State<ReactionTimeScreen> {
  Color backgroundColor = Colors.grey;
  bool canTap = false;
  late DateTime startTime;
  List<int> reactionTimes = [];
  Random random = Random();

  void startTest() {
    setState(() {
      backgroundColor = Colors.grey;
      reactionTimes.clear();
    });

    Future.delayed(const Duration(seconds: 1), () => nextRound());
  }

  void nextRound() {
    setState(() {
      canTap = false;
      backgroundColor = Colors.grey;
    });

    final randomDelay = Duration(milliseconds: 1000 + random.nextInt(2000));

    Future.delayed(randomDelay, () {
      setState(() {
        backgroundColor = Colors.green;
        startTime = DateTime.now();
        canTap = true;
      });
    });
  }

  void handleTap() {
    if (!canTap) {
      setState(() {
        backgroundColor = Colors.red;
      });

      Future.delayed(const Duration(seconds: 1), () => nextRound());
      return;
    }

    final reactionTime = DateTime.now().difference(startTime).inMilliseconds;
    reactionTimes.add(reactionTime);

    if (reactionTimes.length < 5) {
      nextRound();
    } else {
      showResults();
    }
  }

  void showResults() {
    final averageTime = reactionTimes.reduce((a, b) => a + b) ~/ reactionTimes.length; 
    String intoxicationLevel;

    if (averageTime < 250) {
      intoxicationLevel = "Sober";
    } else if (averageTime < 400) {
      intoxicationLevel = "Possibly Impaired";
    } else if (averageTime < 600) {
      intoxicationLevel = "Likely Impaired";
    } else {
      intoxicationLevel = "Highly Impaired";
    }

    showDialog(  
      context: context, 
      builder: (context) => AlertDialog(  
        title: const Text("Results"),  
        content: Text(
          "Average Reaction Time: $averageTime ms\nIntoxication Level: $intoxicationLevel",
        ),
        actions: [
          TextButton(  
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Restart"),
          ),
        ],
      ),
    );

    setState(() {
      backgroundColor = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(       
      body: GestureDetector(           
        onTap: handleTap, 
        child: Container(           
          color: backgroundColor,      
          child: Center(               
            child: ElevatedButton(          
              onPressed: startTest,      
              child: const Text("Start Test"),
            ),
          ),
        ),
      ),
    );
  }
}