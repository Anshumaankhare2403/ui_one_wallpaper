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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  // Image Container
                  Container(
                    width: 196,
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
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 2, sigmaY: 2), // Blur intensity
                        child: Container(
                          color: Colors.black
                              .withOpacity(0.2), // Adjust transparency
                        ),
                      ),
                    ),
                  ),
                  // Text on top of blur
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        img[index]["Imgname"]!,
                        style: const TextStyle(
                          fontSize: 30,
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
