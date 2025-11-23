import 'package:flutter/material.dart';
import 'package:foodgo/models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ------------------ صورة المنتج ------------------
            Stack(
              children: [

                // زر Back
                Positioned(
                  top: 40,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),

                // زر Favorite
                Positioned(
                  top: 40,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite_border),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 280,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),




              ],
            ),

            // ------------------ اسم + سعر + ريتنج ------------------
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      SizedBox(width: 4),
                      Text(
                        product.rating.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // ------------------ الوصف ------------------
                  Text(
                    product.description,
                    style: TextStyle(
                      color: Colors.black87,
                      height: 1.5,
                      fontSize: 15,
                    ),
                  ),

                  SizedBox(height: 25),

                  // ------------------ Spicy level ------------------
                  Text(
                    "Spicy Level",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      spiceOption("Mild"),
                      SizedBox(width: 10),
                      spiceOption("Medium"),
                      SizedBox(width: 10),
                      spiceOption("Hot"),
                    ],
                  ),

                  SizedBox(height: 25),

                  // ------------------ Portion Size ------------------
                  Text(
                    "Portion Size",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      portionOption("Small"),
                      SizedBox(width: 10),
                      portionOption("Medium"),
                      SizedBox(width: 10),
                      portionOption("Large"),
                    ],
                  ),

                  SizedBox(height: 30),

                  // ------------------ Add to Cart ------------------
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ------------------ Widgets ------------------

  Widget spiceOption(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red),
      ),
      child: Text(text),
    );
  }

  Widget portionOption(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black54),
      ),
      child: Text(text),
    );
  }
}
