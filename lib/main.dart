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
          child: Column(
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                child: Image.asset('assets/images/naruto.jpg'),
              ),
              Text(
                "Hi i'm Naruto Uzumaki and It's my team",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  backgroundColor: Colors.black, // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                child: Text('Watch Now'),
                onPressed: () {
                  print("watched");
                },
              )
            ],
          ),
        ),

        // It's a bottomNavigation bar
        bottomNavigationBar: BottomNavigationBar(
          //selected icon
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 39, 255, 129),
          ),
          selectedItemColor: Color.fromARGB(255, 39, 255, 129),

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
