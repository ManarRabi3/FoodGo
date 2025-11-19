import 'package:flutter/material.dart';
import 'package:foodgo/tabs/chat.dart';
import 'package:foodgo/tabs/favorite.dart';
import 'package:foodgo/tabs/home.dart';
import 'package:foodgo/tabs/user.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.transparent),
        ),

        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        notchMargin: 8,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.comment), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "",
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
  List<Widget>tabs=[HomeTab(),UserTab(),ChatTab(),FavoriteTab()];

}
