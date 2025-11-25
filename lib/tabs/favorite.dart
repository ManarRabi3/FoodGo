import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/my_provider.dart';
import '../widgets/product_card.dart'; // لو عندك الكارد في widgets

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    // جلب البروفايدر
    final myProvider = Provider.of<my_provider>(context);

    // جلب قائمة الفيفروت
    final favorites = myProvider.favorites;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Colors.red,
      ),
      body: favorites.isEmpty
          ? Center(
        child: Text(
          "No favorites yet!",
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final product = favorites[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ProductCard(product: product),
          );
        },
      ),
    );
  }
}
