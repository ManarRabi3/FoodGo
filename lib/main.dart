import 'package:flutter/material.dart';
import 'package:foodgo/screens/home.dart';

MyApp main() {

  return(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:HomeScreen.routName ,
      routes:
      {
         HomeScreen.routName:(context)=>const HomeScreen(),
      },

    );
  }
}
