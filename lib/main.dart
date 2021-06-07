import 'package:flutter/material.dart';
import 'Screens/Screen1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Screen1(title: 'USD/INR'),
    );
  }
}









  