import 'package:flutter/material.dart';
import 'package:foodgo/models/product_model.dart';
//import 'package:flutter/rendering.dart';
import 'package:foodgo/widgets/categories_tabs.dart';
import 'package:foodgo/widgets/home_title_section.dart';
import 'package:foodgo/widgets/product_card.dart';
import 'package:foodgo/widgets/search_bar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTitleSection(),

       // SizedBox(height: 20),

        const SearchSection(),

       const CategoriesSection(),

        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.70,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
              );
            },
          ),
        )

      ],
    );
  }
}
