import 'package:flutter/material.dart';

class ListImg extends StatefulWidget {
  const ListImg({super.key});

  @override
  State<ListImg> createState() => _ListImgState();
}

class _ListImgState extends State<ListImg> {
  final List<String> Dark = [
    "assets/image/dark/Dark (1).jpg",
    "assets/image/dark/Dark (2).jpg",
    "assets/image/dark/Dark (3).jpg",
    "assets/image/dark/Dark (4).jpg",
    "assets/image/dark/Dark (5).jpg",
    "assets/image/dark/Dark (6).jpg",
    "assets/image/dark/Dark (7).jpg",
    "assets/image/dark/Dark (8).jpg",
    "assets/image/dark/Dark (9).jpg",
    "assets/image/dark/Dark (10).jpg",
    "assets/image/dark/Dark (11).jpg",
    "assets/image/dark/Dark (12).jpg",
    "assets/image/dark/Dark (13).jpg",
    "assets/image/dark/Dark (14).jpg",
  ];
  final List<String> Light = [
    "assets/image/Light/Light (1).jpg",
    "assets/image/Light/Light (2).jpg",
    "assets/image/Light/Light (3).jpg",
    "assets/image/Light/Light (4).jpg",
    "assets/image/Light/Light (5).jpg",
    "assets/image/Light/Light (6).jpg",
    "assets/image/Light/Light (7).jpg",
    "assets/image/Light/Light (8).jpg",
    "assets/image/Light/Light (9).jpg",
    "assets/image/Light/Light (10).jpg",
    "assets/image/Light/Light (11).jpg",
    "assets/image/Light/Light (12).jpg",
    "assets/image/Light/Light (13).jpg",
    "assets/image/Light/Light (14).jpg",
  ];

  int le = 24;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.687, // Default ratio
      ),
      itemCount: le,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        var me = index == 10 ? {Dark[index]} : {Light[index]};

        return Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('${me}'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
