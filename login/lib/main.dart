import 'package:flutter/material.dart';
import '/login.dart';
import '/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(), 
      routes: {
        '/signup': (context) => Signup(), 
      },
    ),
  );
}