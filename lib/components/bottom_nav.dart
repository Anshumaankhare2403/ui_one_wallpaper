import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.black,
      backgroundColor: Color(0xFFF8FAFC),
      index: widget.currentIndex,
      items: [
        CurvedNavigationBarItem(
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
      onTap: widget.onTap,
      height: 80,
      animationDuration: Duration(milliseconds: 450),
      animationCurve: Curves.decelerate,
    );
  }
}
