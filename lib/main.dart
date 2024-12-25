import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar(
      backgroundColor: Colors.grey[900],
      centerTitle: true,
      title: const Text(
        'My Dashatar App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    body: Center(child: Image.asset('assets/img/dashatar.png')),
  )));
}
