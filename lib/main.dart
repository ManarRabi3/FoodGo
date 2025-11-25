import 'package:flutter/material.dart';
import 'package:foodgo/Payment/payment_screen.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'provider/my_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => my_provider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        PaymentScreen.routeName: (context) =>  const PaymentScreen(),
      },
      home: const SplashScreen(),
    );
  }
}
