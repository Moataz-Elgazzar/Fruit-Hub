import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/features/welcome/pages/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      pushAndRemoveUntil(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Image.asset(AppImages.logo, width: 250, height: 250))],
      ),
    );
  }
}
