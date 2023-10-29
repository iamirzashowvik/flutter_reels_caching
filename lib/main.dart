import 'package:cached_reels/custom_video_player/video_page.dart';
import 'package:cached_reels/service/reel_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // As in this repo I don't have much more logic,
    // So I call the getVidesFromApI() function here to initiate caching.
    // you need to call this function wisely when you need it.
    ReelService().getVideosFromApI();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoReelPage(
        index: 0, // if you want to go to any specific index
        reels: ReelService().getReels(),
      ),
    );
  }
}
