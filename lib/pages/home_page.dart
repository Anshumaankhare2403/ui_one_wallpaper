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
      color: Colors.red,
      child: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
        color: Colors.greenAccent,
        child:
            Center(child: Text("Search Page", style: TextStyle(fontSize: 24)))),
    Container(
        color: Colors.blue,
        child: Center(child: Text("New Page", style: TextStyle(fontSize: 24)))),
  ];
  Color _getBackgroundColor() {
    switch (_selectedIndex) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.greenAccent;
      case 2:
        return Colors.blueAccent;
      default:
        return Colors.amberAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        backgroundColor: _getBackgroundColor(),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _pages[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}
