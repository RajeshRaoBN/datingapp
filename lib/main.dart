import 'package:datingapp/dating_pref.dart';
import 'package:datingapp/sexual_pref.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void increaseAge() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Da Dating App',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.pink[300],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                DatingPref(),
              ],
            ),
            Row(
              children: [
                SexualPref(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
