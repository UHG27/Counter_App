import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home_screens.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      );
  }
}