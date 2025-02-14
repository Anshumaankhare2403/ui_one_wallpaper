import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/catgor.dart';
import '../components/list_img.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Container(
                height: screenHeight * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 233, 233),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  style: TextStyle(
                      fontSize: screenWidth * 0.045), // Responsive text size
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.04, right: screenWidth * 0.02),
                      child: Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: screenWidth * 0.06, // Responsive icon size
                        color: Colors.black54,
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02), // Align text vertically
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
              child: Catgor(
                widths: 0.44,
                heights: 0.18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                "All Wallpaper",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListImg(
              scrll: Axis.horizontal,
            ))
          ],
        ),
      ),
    );
  }
}
