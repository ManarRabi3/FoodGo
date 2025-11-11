import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // تأكدي إن الملف ده موجود

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد 3 ثواني ينتقل إلى HomeScreen
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE53935),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الصورة
            Image(
              image: AssetImage('assets/images/Foodgo.png'),
              height: 170,
            ),
            SizedBox(height: 30),
            // الكلمة FoodGo
            Image(
              image: AssetImage('assets/images/burger_one.png'),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
