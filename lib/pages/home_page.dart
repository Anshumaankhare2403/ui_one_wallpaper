// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';
import '../components/hader_comp.dart';
import '../components/catgor.dart';
import '../components/list_img.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Column(
      children: [
        SizedBox(
          child: Catgor(),
          height: 130,
        ),
        Expanded(child: ListImg()),
      ],
    ),
    Container(
      color: const Color(0xFFF8FAFC),
      child: const Center(
        child: Text("Search Page", style: TextStyle(fontSize: 24)),
      ),
    ),
    Container(
      color: const Color(0xFFF8FAFC),
      child: const Center(
        child: Text("Set", style: TextStyle(fontSize: 24)),
      ),
    ),
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
              height: 80,
              child: HaderComp(navcolor: const Color(0xFFF8FAFC)),
            ),
            Expanded(
                child: _pages[_selectedIndex]), // Fix: Allow the page to expand
          ],
        ),
      ),
    );
  }
}
