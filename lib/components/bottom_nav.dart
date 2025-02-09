import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.backgroundColor,
  });
  final int currentIndex;
  final Function(int) onTap;
  final Color backgroundColor;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: widget.backgroundColor,
      index: widget.currentIndex,
      items: [
        CurvedNavigationBarItem(child: Icon(Icons.home), label: 'Home'),
        CurvedNavigationBarItem(child: Icon(Icons.search), label: 'Search'),
        CurvedNavigationBarItem(child: Icon(Icons.add), label: 'New'),
      ],
      onTap: widget.onTap,
    );
  }
}
