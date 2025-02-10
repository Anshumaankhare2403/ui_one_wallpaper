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

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    final List<Widget> pages = [
      Column(
        children: [
          SizedBox(
            height: screenHeight * 0.14, // Responsive height
            child: const Catgor(),
          ),
          const Expanded(child: ListImg()),
        ],
      ),
      const Center(
        child: Text("Search Page", style: TextStyle(fontSize: 24)),
      ),
      const Center(
        child: Text("Set", style: TextStyle(fontSize: 24)),
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1, // Responsive header height
              child: const HaderComp(navcolor: Color(0xFFF8FAFC)),
            ),
            Expanded(
                child:
                    pages[_selectedIndex]), // Uses Expanded to prevent overflow
          ],
        ),
      ),
    );
  }
}
