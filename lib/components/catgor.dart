import 'dart:ui';
import 'package:flutter/material.dart';

class Catgor extends StatefulWidget {
  const Catgor({super.key});

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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: screenWidth * 0.4, // Responsive height based on screen width
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
                    width: screenWidth * 0.462, // Responsive width
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
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
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
