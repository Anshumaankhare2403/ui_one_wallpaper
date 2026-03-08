import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import 'dart:io';
import 'dart:typed_data';

class ImageOpen extends StatefulWidget {
  const ImageOpen({super.key, required this.imagelist});
  final Image imagelist;

  @override
  State<ImageOpen> createState() => _ImageOpenState();
}

class _ImageOpenState extends State<ImageOpen> {
  Future<void> setWallpaperFromAssetHomeScreen() async {
    final assetImage = widget.imagelist.image as AssetImage;
    ByteData data = await rootBundle.load(assetImage.assetName);
    Uint8List bytes = data.buffer.asUint8List();

    final dir = await getTemporaryDirectory();
    File file = File("${dir.path}/wallpaper.jpg");
    await file.writeAsBytes(bytes);

    final wallpaperManager = WallpaperManagerFlutter();
    await wallpaperManager.setWallpaper(
      file,
      WallpaperManagerFlutter.homeScreen,
    );
     Navigator.pop(context);
  }

  Future<void> setWallpaperFromAssetLockScreen() async {
    final assetImage = widget.imagelist.image as AssetImage;
    ByteData data = await rootBundle.load(assetImage.assetName);
    Uint8List bytes = data.buffer.asUint8List();

    final dir = await getTemporaryDirectory();
    File file = File("${dir.path}/wallpaper.jpg");
    await file.writeAsBytes(bytes);

    final wallpaperManager = WallpaperManagerFlutter();
    await wallpaperManager.setWallpaper(
      file,
      WallpaperManagerFlutter.lockScreen,
    );
     Navigator.pop(context);
  }

  Future<void> setWallpaperFromAssetDothScreens() async {
    final assetImage = widget.imagelist.image as AssetImage;
    ByteData data = await rootBundle.load(assetImage.assetName);
    Uint8List bytes = data.buffer.asUint8List();

    final dir = await getTemporaryDirectory();
    File file = File("${dir.path}/wallpaper.jpg");
    await file.writeAsBytes(bytes);

    final wallpaperManager = WallpaperManagerFlutter();
    await wallpaperManager.setWallpaper(
      file,
      WallpaperManagerFlutter.bothScreens,
    );
     Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(FontAwesomeIcons.circleArrowLeft),
                    iconSize: screenWidth * 0.095,
                  ),
                  Icon(
                    FontAwesomeIcons.solidHeart,
                    size: screenWidth * 0.09,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight * 0.65,
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  image: DecorationImage(
                    image: widget.imagelist.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: setWallpaperFromAssetHomeScreen,
                        child: Container(
                          height: screenHeight * 0.055,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 190, 166),
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Home",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: InkWell(
                        onTap: setWallpaperFromAssetLockScreen,
                        child: Container(
                          height: screenHeight * 0.055,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 190, 166),
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Lock",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: InkWell(
                        onTap: setWallpaperFromAssetDothScreens,
                        child: Container(
                          height: screenHeight * 0.055,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 190, 166),
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Both",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
