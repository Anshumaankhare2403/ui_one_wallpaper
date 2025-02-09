// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';
import '../components/hader_comp.dart';

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
            SizedBox(
              child: HaderComp(
                navcolor: Color(0xFFF8FAFC),
              ),
              height: 80,
            ),
            Expanded(child: _pages[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}
