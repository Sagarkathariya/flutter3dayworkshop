import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  String data;
  SettingsScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 27.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              data,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
