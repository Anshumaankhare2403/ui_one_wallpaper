import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageOpen extends StatefulWidget {
  const ImageOpen({super.key, required this.imagelist});
  final Image imagelist;

  @override
  State<ImageOpen> createState() => _ImageOpenState();
}

class _ImageOpenState extends State<ImageOpen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top Row (Back & Like Icons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(FontAwesomeIcons.circleArrowLeft),
                    iconSize: screenWidth * 0.095, // Responsive icon size
                  ),
                  Icon(
                    FontAwesomeIcons.solidHeart,
                    size: screenWidth * 0.09, // Responsive icon size
                    color: Colors.red,
                  ),
                ],
              ),

              // Image Container

              Container(
                height: screenHeight * 0.7,
                width: screenWidth * 0.83,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.imagelist.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                ),
              ),

              // Bottom Row (You can add more elements here if needed)
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
