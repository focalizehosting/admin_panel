import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Welcomee';
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),
      centerTitle: true,
      actions: [
        
      ],
      
      ),
     
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),              
              child: Text('Welcome'),             
            
            ),
            ListTile(
              title: const Text('Dashboard'),
              hoverColor: Colors.blue,
          
        
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            
              leading: const Icon(Icons.dashboard),
              
            ),
            const Divider(
              height: 1.0,
            ),
            ListTile(
              title: const Text('Employees'),
               hoverColor: Colors.blueAccent,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: const Icon(CupertinoIcons.person_crop_rectangle_fill),
            ),
             const Divider(
              height: 1.0,
            ),
            ListTile(
              title: const Text('Payments'),
               hoverColor: Colors.blue,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },             
              leading: const Icon(CupertinoIcons.money_pound),
            ),
             const Divider(
              height: 1.0,
            ),
            ListTile(
              title: const Text('Attendance'),
               hoverColor: Colors.blue,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: const Icon(CupertinoIcons.percent),
            ),
          ],
        ),
      ),
    );
  }
}

