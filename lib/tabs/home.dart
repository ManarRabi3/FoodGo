import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, size: 28, color: Colors.black),
                      SizedBox(width: 10),
                      Text(
                        "Search your food",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),

              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),


        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // هنضيف أول تاب هنا بعد شوية
            ],
          ),
        ),
      ],
    );
  }
}
