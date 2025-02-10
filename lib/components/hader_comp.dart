import 'package:flutter/material.dart';

class HaderComp extends StatelessWidget implements PreferredSizeWidget {
  final Color navcolor;

  const HaderComp({super.key, required this.navcolor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: navcolor,
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 16), // Responsive padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title
            Text(
              "WallpaperUS",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width *
                    0.06, // Responsive font size
                fontWeight: FontWeight.w900,
              ),
            ),
            // Night Mode Icon
            const Icon(
              Icons.nightlight_outlined,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(70); // Adjust height dynamically if needed
}
