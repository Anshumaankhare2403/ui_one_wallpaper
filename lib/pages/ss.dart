import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import 'dart:io';

class Ss extends StatefulWidget {
  const Ss({super.key});

  @override
  State<Ss> createState() => _SsState();
}

class _SsState extends State<Ss> {

  Future<void> setWallpaperFromAsset() async {
    ByteData data = await rootBundle.load("assets/image/dark/Dark (10).jpg");
    Uint8List bytes = data.buffer.asUint8List();

    final dir = await getTemporaryDirectory();
    File file = File("${dir.path}/wallpaper.jpg");
    await file.writeAsBytes(bytes);

    final wallpaperManager = WallpaperManagerFlutter();
    await wallpaperManager.setWallpaper(
      file,
      WallpaperManagerFlutter.homeScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wallpaper App")),
      body: Center(
        child: ElevatedButton(
          onPressed: setWallpaperFromAsset,
          child: const Text("Set Wallpaper"),
        ),
      ),
    );
  }
}