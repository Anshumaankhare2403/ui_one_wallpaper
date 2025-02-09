import 'package:flutter/material.dart';

class HaderComp extends StatefulWidget {
  const HaderComp({super.key, required this.navcolor});
  final navcolor;
  @override
  State<HaderComp> createState() => _HaderCompState();
}

class _HaderCompState extends State<HaderComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: widget.navcolor,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "WallpaperUS",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                ),
              ),
              // Icon(
              //   Icons.sunny,
              //   size: 26,
              // ),
              Icon(
                Icons.nightlight_outlined,
                size: 26,
              )
            ],
          ),
        ),
      )),
    );
  }
}
