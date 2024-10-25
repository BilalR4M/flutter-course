import 'package:dice_roll_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

MaterialApp myApp() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: CustomContainer( colors: [Color.fromARGB(255, 56, 38, 87), Color.fromARGB(255, 82, 2, 78)],),
    ),
  );
}

