import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/common/widgets/main_navigation/main_navigation_screen.dart';
import 'package:tiktok_clone/screens/features/authentication/login_Screen.dart';
import 'package:tiktok_clone/screens/features/authentication/onBoarding/interests_screen.dart';
import 'package:tiktok_clone/screens/features/authentication/sign_up_screen.dart';
import 'package:tiktok_clone/screens/features/authentication/username_screen.dart';
import 'package:tiktok_clone/screens/features/videos/video_recording_screen.dart';

final router = GoRoute(
  routes: [
    GoRoute(
      name: SignUpScreen.routeName,
      path: SignUpScreen.routeURL,
      builder: (context, state) => SignUpScreen(),
    ),
    GoRoute(
      name: Loginscreen.routeName,
      path: Loginscreen.routeURL,
      builder: (context, state) => Loginscreen(),
    ),
    GoRoute(
      name: InterestsScreen.routeName,
      path: InterestsScreen.routeURL,
      builder: (context, state) => const InterestsScreen(),
    ),
    GoRoute(
      path: "/:tab(home|discover|inbox|profile)",
      name: MainNavigationScreen.routeName,
      builder: (context, state) {
        final tab = state.pathParameters["tab"]!;
        return MainNavigationScreen(tab: tab);
      },
    )
  ],
  path: '',
);
