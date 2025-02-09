// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(
      color: Color(0xFFF8FAFC),
      child: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
        color: Color(0xFFF8FAFC),
        child:
            Center(child: Text("Search Page", style: TextStyle(fontSize: 24)))),
    Container(
        color: Color(0xFFF8FAFC),
        child: Center(child: Text("Set", style: TextStyle(fontSize: 24)))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text("data"),
            ),
            Expanded(child: _pages[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}
