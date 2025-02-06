import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/screens/features/authentication/username_screen.dart';
import 'package:tiktok_clone/screens/features/authentication/login_Screen.dart';
import 'package:tiktok_clone/screens/features/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone/utils.dart';
import '../../../constants/gaps.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "signUp";
  static const routeURL = "/";

  const SignUpScreen({super.key});

  void _onLoginTap(BuildContext context) async {
    context.pushNamed(Loginscreen.routeName);
  }

  void _onEmailTap(BuildContext context) {
    /*  Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        reverseTransitionDuration: Duration(seconds: 1),
        pageBuilder: (
          context,
          animation,
          secondaryAnimation,
        ) =>
            UsernameScreen(),
        transitionsBuilder: (
          context,
          animation,
          secondaryAnimation,
          child,
        ) {
          final offsetAnimation = Tween(
            begin: Offset(0, -1),
            end: Offset.zero,
          ).animate(animation);
          return SlideTransition(
            position: offsetAnimation,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
      ),
    ); */
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UsernameScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size40,
              ),
              child: Column(
                children: [
                  Gaps.v80,
                  Text(
                    'Sign up for TikTok',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.amber,
                        ),
                  ),
                  Gaps.v20,
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Create a profile, follow other accounts, make your own videos, and more.',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v40,
                  if (orientation == Orientation.portrait) ...[
                    GestureDetector(
                      onTap: () => _onEmailTap(context),
                      child: AuthButton(
                        icon: Icon(FontAwesomeIcons.user),
                        text: "Use email or Password",
                      ),
                    ),
                    Gaps.v16,
                    AuthButton(
                      icon: Icon(FontAwesomeIcons.apple),
                      text: "Continue with Apple",
                    ),
                  ],
                  if (orientation == Orientation.landscape)
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _onEmailTap(context),
                            child: AuthButton(
                              icon: Icon(FontAwesomeIcons.user),
                              text: "Use email or Password",
                            ),
                          ),
                        ),
                        Gaps.h16,
                        Expanded(
                          child: AuthButton(
                            icon: Icon(FontAwesomeIcons.apple),
                            text: "Continue with Apple",
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: isDarkMode(context) ? null : Colors.grey.shade50,
            child: Padding(
              padding: EdgeInsets.only(
                top: Sizes.size32,
                bottom: Sizes.size32,
                left: Sizes.size24,
                right: Sizes.size24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                  ),
                  Gaps.h5,
                  GestureDetector(
                    onTap: () => _onLoginTap(context),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
