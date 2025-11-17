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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 70),

          Padding(
            padding: EdgeInsets.only(left: 20),
            //padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/Food_black.png'),
              height: 60,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Image(
              image: AssetImage('assets/images/Order your favourite food!.png'),
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
