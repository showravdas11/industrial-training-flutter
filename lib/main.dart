import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 70, 70),

        //appBar
        appBar: AppBar(
          title: Text("WaTch Anime"),
          backgroundColor: Color.fromARGB(255, 16, 36, 46),
          leading: Icon(
            Icons.menu,
          ),
        ),
        body: Center(
            child: Container(
          width: 400,
          height: 400,
          child: Image.asset('assets/images/naruto.jpg'),
        )),

        // It's a bottomNavigation bar
        bottomNavigationBar: BottomNavigationBar(
          //selected icon
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),

          // unselected icon
          unselectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
            // unselectedIconColor: Color.fromARGB(255, 223, 59, 38),
          ),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          iconSize: 30,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 16, 36, 46),

          //navigation item
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'TV',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
          ],
        ),
      ),
    );
  }
}
