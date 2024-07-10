import 'package:dataidea/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Set the status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF3A6E68), // Set the status bar color to #3A6E68
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:
            const Color(0xFF3A6E68), // Set the primary color to #3A6E68
      ),
      home: const HomePage(),
    );
  }
}
