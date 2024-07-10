import 'package:dataidea/blog.dart';
import 'package:dataidea/bottom_navbar.dart';
import 'package:dataidea/data_science.dart';
import 'package:dataidea/football.dart';
import 'package:dataidea/movies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List pages = [
    const DataScience(),
    const Blog(),
    const Football(),
    const Movies()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: GNavBar(
          onTabChange: onTabChange,
        ));
  }
}
