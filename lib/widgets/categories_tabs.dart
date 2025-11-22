import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        //SizedBox(height: 5),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: Text(
                    'All',
                    style: TextStyle(color:Color(0xFF6A6A6A), fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color(0xFFF3F4F6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: Text(
                    'Combos',
                    style: TextStyle(color:Color(0xFF6A6A6A), fontWeight: FontWeight.bold),

                  ),
                  backgroundColor: Color(0xFFF3F4F6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: Text(
                    'Sliders',
                    style: TextStyle(color:Color(0xFF6A6A6A),fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color(0xFFF3F4F6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: Text(
                    'Classic',
                    style: TextStyle(color:Color(0xFF6A6A6A), fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color(0xFFF3F4F6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                  label: Text(
                    'Drinks',
                    style: TextStyle(color:Color(0xFF6A6A6A), fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color(0xFFF3F4F6),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


