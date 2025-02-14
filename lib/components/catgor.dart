import 'dart:ui';
import 'package:flutter/material.dart';

class Catgor extends StatefulWidget {
  const Catgor({super.key, required this.widths, required this.heights});
  final double widths;
  final double heights;
  @override
  State<Catgor> createState() => _CatgorState();
}

class _CatgorState extends State<Catgor> {
  final List<Map<String, String>> img = [
    {
      "image": "assets/image/dark/Dark (12).jpg",
      "Imgname": "Dark",
    },
    {
      "image": "assets/image/light/Light (22).jpg",
      "Imgname": "Light",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: screenHeight *
            widget.heights, // Responsive height based on screen width
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  // Image Container
                  Container(
                    width: screenWidth * widget.widths, // Responsive width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(img[index]["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Blur Effect
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
                        child: Container(
                          color: Colors.black.withOpacity(0.2), // Dark overlay
                        ),
                      ),
                    ),
                  ),
                  // Text on top of blur
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        img[index]["Imgname"]!,
                        style: TextStyle(
                          fontSize: screenWidth * 0.07, // Responsive font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
