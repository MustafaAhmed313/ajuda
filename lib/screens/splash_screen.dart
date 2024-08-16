import 'dart:async';

import 'package:donation_app/screens/onboarding-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((val) {
      Get.offAll(const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splash-screen.png'),
              )
          )
      ),
    );
  }
}
