// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WinnerScreen(),
    );
  }
}

class WinnerScreen extends StatefulWidget {
  @override
  _WinnerScreenState createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  final List<String> names = [
    'Juhu',
    'Yash',
    'Bhavana',
    'Uday',
  ];
  String winner = '';
  int num = 0;

  void pickWinner() {
    setState(() {
      winner = names[Random().nextInt(names.length)];
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Winner Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                pickWinner();
              },
              child: Text('Pick Winner'),
            ),
            SizedBox(height: 20),
            Text(
              'Winner: $winner',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Counter value : $num ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
