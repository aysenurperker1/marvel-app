import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_learn_example/pages/home_pages.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/marvelstudios.png',
      nextScreen: const HomePage(),
      pageTransitionType: PageTransitionType.topToBottom,
      duration: 800,
    );
  }
}
