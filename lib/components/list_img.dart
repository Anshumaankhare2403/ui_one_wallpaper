import 'package:flutter/material.dart';

class ListImg extends StatefulWidget {
  const ListImg({super.key});

  @override
  State<ListImg> createState() => _ListImgState();
}

class _ListImgState extends State<ListImg> {
  List<String> images = [
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
    "assets/image/light/Light (1).jpg",
    "assets/image/light/Light (2).jpg",
    "assets/image/light/Light (3).jpg",
    "assets/image/light/Light (4).jpg",
    "assets/image/light/Light (5).jpg",
    "assets/image/light/Light (6).jpg",
    "assets/image/light/Light (7).jpg",
    "assets/image/light/Light (8).jpg",
    "assets/image/light/Light (9).jpg",
    "assets/image/light/Light (10).jpg",
    "assets/image/light/Light (11).jpg",
    "assets/image/light/Light (12).jpg",
    "assets/image/light/Light (13).jpg",
    "assets/image/light/Light (14).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Dynamically set crossAxisCount based on screen width
    int crossAxisCount = screenWidth < 600
        ? 2
        : screenWidth < 900
            ? 3
            : 4;

    // Adjust childAspectRatio dynamically
    double childAspectRatio = screenWidth < 600 ? 0.7 : 0.8;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: childAspectRatio,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]), // ✅ Responsive image loading
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
