import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/screens/features/authentication/login_Screen.dart';
import 'package:tiktok_clone/screens/features/authentication/sign_up_screen.dart';
import 'package:tiktok_clone/screens/features/authentication/username_screen.dart';
import 'package:tiktok_clone/screens/features/videos/video_recording_screen.dart';

final router = GoRoute(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => VideoRecordingScreen(),
    ),
  ],
  path: '',
);
