import 'package:flutter/material.dart';
import 'Screens/settings_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter 3 Day WorkShop",
          style: TextStyle(
            fontSize: 27.0,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => SettingsScreen(
                        data: "I am sending a message from homepage")))),
            child: const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/sag.jpg",
            width: 300.0,
            height: 350.0,
          ),
          const Center(
            child: Text(
              "Sagar Kathariya",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Exo 2, sans-serif",
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Email: Sagarkathariya@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Exo 2, sans-serif",
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Flutter 3 Day WorkShop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Exo 2, sans-serif",
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
