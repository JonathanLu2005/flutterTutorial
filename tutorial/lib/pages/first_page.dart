import 'package:flutter/material.dart';
//import 'package:tutorial/pages/second_page.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/profile_page.dart';
import 'package:tutorial/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {     
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      appBar: AppBar(title: Text("first page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(     
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,  
        items: [           
          BottomNavigationBarItem(                     
            icon: Icon(Icons.home), 
            label: 'Home',
          ),

          BottomNavigationBarItem(                   
            icon: Icon(Icons.person),
            label: 'profile',
          ),

          BottomNavigationBarItem(          
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),

      // drawer navigation, routes create the routes, then can use navigator push named to go to another
      /*
      drawer: Drawer(             
        backgroundColor: Colors.deepOrange[100],
        child: Column(            
          children: [           
            DrawerHeader(           
              child: Icon(                
                Icons.favorite,     
                size: 48,
              ),
            ),

            ListTile(            
              leading: Icon(Icons.home),    
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),


            ListTile(            
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {       
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
      */

      // navigation
      /*
      body: Center(    
        child: ElevatedButton(               
          child: Text("go to 2nd page"),

          onPressed: () {     
            Navigator.pushNamed(context, '/secondpage');


            // changing pages
            /*       
            Navigator.push(              
              context,              
              MaterialPageRoute(                     
                builder: (context) => SecondPage(),
              ),
            );
            */
          },
        ),
      ),
      */
    );
  }
}