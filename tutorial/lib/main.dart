import 'package:flutter/material.dart';
import 'package:tutorial/pages/first_page.dart';
import 'package:tutorial/pages/second_page.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/settings_page.dart';
import 'package:tutorial/pages/counter_page.dart';
import 'package:tutorial/pages/todo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {         
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {     
    return MaterialApp(         
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
    );
  }
}


// learning how do stateful widget for counter app
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(         
      home: CounterPage(),
    );
  }
}
*/

/*
class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false, 
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        //'/secondpage': (context) => SecondPage(),
      },
    );
  }
}
*/

// different widgets to display info and detect interaction
/*
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["jonathan", "armaan", "neil", "isaac"];

  // function for gesture dectector aka how use stuff
  void userTapped() {
    print("user tapped");
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // colour
        backgroundColor: Colors.blue[100],

        // create app bar
        /*
        appBar: AppBar(
          title: Text("my app bar"), 
          backgroundColor: Colors.deepPurple, 
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        */

        // column and rows
        /*
        body: Column(
          // have default, center, space, space between, end, change col by x axis
          //mainAxisAlignment: MainAxisAlignment.center,

          // start center, space stuff how we like by y axis
          //crossAxisAlignment: CrossAxisAlignment.center,

          // option for containers
          /*
          children: [
            Container(
              height: 200,
              width: 200, 
              color: Colors.deepPurple,
            ),

            Container(
              height: 200,
              width: 200, 
              color: Colors.deepPurple[400],
            ),

            Container(
              height: 200,
              width: 200, 
              color: Colors.deepPurple[200],
            ),
          ]
          */

          // expanded exapnd to empty space evenly
          /*
          children: [ 
            Expanded( 
              child: Container(
                color: Colors.deepOrange,
              ),
            ),
            
            // flex is ratio to others
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.deepOrange[200],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.deepOrange[400],
              ),
            ),
          ],
          */
        )
        */

        body: Center (     
          child: GestureDetector( 
            onTap: userTapped,
            child: Container(                
              height: 200, 
              width: 200, 
              color: Colors.deepPurple[300],
              child: Center(child: Text("tap me")),
            ),      
          ),
        ),


        // weird way to do stuff - stack
        /*
        body: Stack(        
          // sort them out
          alignment: Alignment.bottomRight,       
          children: [         
            Container(             
              height: 300,  
              width: 300,
              color: Colors.deepPurple,
            ),

            Container(               
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
            ),

            Container(                 
              height: 100,
              width: 100,
              color: Colors.deepPurple[400],
            ),
          ]
        ),
        */

        // grid views - creates a grid
        /*
        body: GridView.builder(     
          itemCount: 64,
          gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemBuilder: (context, index) => Container(  
            color: Colors.deepPurple,
            margin: EdgeInsets.all(2),
          )
        ),
        */

        // list view with builder, can use data structures with our widgets
        /*
        body: ListView.builder(    
          itemCount: names.length, 
          itemBuilder: (context, index) => ListTile(    
            title: Text(names[index]),
          ),
        ),
        */

        // rows, make it as rows
        /*
        body: Row(
          children: [  
            Container(       
              width: 200,
              color: Colors.deepOrange,
            ),

            Container(             
              width: 200,
              color: Colors.deepOrange[200],
            ),

            Container(          
              width: 200,
              color: Colors.deepOrange[400],
            ),
          ]
        )
        */

        // listview - column that can scroll in case we overflow
        /*
        body: ListView(
          // by default vertical can be horizxontal
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 350,
              color: Colors.deepOrange,
            ),

            Container(
              height: 350,
              color: Colors.deepOrange[200],
            ),

            Container(     
              height: 350,
              color: Colors.deepOrange[400],
            ),

          ]
        )
        */


        // container, creates body of text and give styling and stuff
        /*
        body: Center(
          child: Container(
            height: 300,
            width: 300,

            // another child, can use only(left: 25, top: 50),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
            ),

            // example of adding text
            /*
            child: Text(
              "jonathan lu",
              style: TextStyle (
                color: Colors.white, 
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            */
          ),
        ),
        */
      ),
    );
  }
}
*/

/*
void main() {
  runApp(const MyApp());

  print("hi there");

  print(9 == 9);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // variables
  String name = "jonathan lu";
  int age = 19;
  double pi = 3.14159;
  bool isBeginner = true;

  /*
  operators
  comparisons

  same in python

  logical
  && AND
  || OR
  ! NOT
  */
  void greet() {
    print("hello");
  }

  void greetPerson(String name) {
    print("hello " + name);
  }

  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }

  // lists
  List<int> numbers = [1,2,3];

  List<String> names = ["jonathan","isaac","neil","armaan"];

  void printNames() {
    for (int i = 0; i < names.length; i++) {
      print(names[i]);
    }
  }

  void printNumbers() {
    for (int i = 0; i < numbers.length; i++) {
      print(numbers[i]);
    }
  }

  // set
  Set<String> uniqueNames = {"Jonathan", "Isaac", "neil", "armaan"};

  // hashmap
  Map user = {
    'name': "jonathan lu",
    'age': 19,
    'height': 165,
  };

  @override
  Widget build(BuildContext context) {
    print(isBeginner && (age > 18));
    // map
    print(user['age']);

    // lists
    printNumbers();

    printNames();

    // function
    greet();

    greetPerson("jonathan");

    print(add(3,5));

    // while loop
    int countDown = 5;

    while (countDown > 0) {
      print(countDown);
      countDown--;
    }

    // for loop
    for (int i = 0; i <= 5; i++) {
      if (i == 3) {
        continue;
      } else {
        print(i);
      }
    }

    // control flow
    if (age >= 65) {
      print("youre retired");
    } else if (age >= 18) {
      print("you're an adult");
    } else {
      print("youre not an adult");
    }

    // switch
    String grade = "B";
    switch(grade) {
      case "A":
        print("excellent");
        break;
      case "B":
        print("good");
        break;
      case "C":
        print("fair");
        break;
      default:
        print("study more");
    }


    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
*/