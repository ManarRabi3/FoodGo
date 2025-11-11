import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart'; // بعدين هننشئها

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showSecondImage = false;

  @override
  void initState() {
    super.initState();

    // بعد 2 ثانية نبدّل الصورة
    Timer(const Duration(seconds: 2), () {
      setState(() {
        showSecondImage = true;
      });
    });

    // بعد 4 ثواني ننتقل للصفحة اللي بعدها
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: showSecondImage
              ? Column(
            key: const ValueKey(2),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/burgers_two.png', height: 180),
              const SizedBox(height: 20),
              const Text(
                "FoodGO",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          )
              : Image.asset(
            'assets/images/burger_one.png',
            key: const ValueKey(1),
            height: 180,
          ),
        ),
      ),
    );
  }
}
