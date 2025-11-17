import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.transparent),
        ),

        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
        ],
      ),
      body: Column(
          children:const[
            SizedBox(height: 60),
            Text("FoodGo")]),
    );
  }
}
