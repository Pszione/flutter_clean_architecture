import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/layers/presentation/ui/pages/car_screen.dart';

// Entry point of our APP
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarScreen(),
    ),
  );
}
