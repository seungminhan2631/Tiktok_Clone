import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewScreen extends StatefulWidget {
  final XFile video;
  const VideoPreviewScreen({
    super.key,
    required this.video,
  });

  @override
  State<VideoPreviewScreen> createState() => _ViewPreviewScreenState();
}

class _ViewPreviewScreenState extends State<VideoPreviewScreen> {

late final VideoPlayerController _videoPlayerController;

  Future<void> _initVideo() async{
    _videoPlayerController = VideoPlayerController.file(File(widget.video.path),);
  }

  @override
  void initState() {
    super.initState();
    _initVideo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Preview Video",
        ),
      ),
      body: ,
    );
  }
}
