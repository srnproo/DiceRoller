import 'package:flutter/material.dart';
import 'package:hello/gradient_container.dart';
void main() {
  runApp(
   const  MaterialApp(
      home: Scaffold(
        backgroundColor: null,
        body:  GradientContainer(Color.fromARGB(255, 99, 69, 5),Color.fromARGB(189, 81, 15, 15)),
      ),
    ),
  );
}

