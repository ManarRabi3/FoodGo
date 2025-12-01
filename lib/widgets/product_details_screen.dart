import 'package:flutter/material.dart';
import 'package:foodgo/Payment/payment_screen.dart';
import 'package:foodgo/models/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                children: [
                  //  Back و Favorite
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  // Product Image
                  Container(
                    width: double.infinity,
                    height: 270,
                    child: Image.asset(
                      widget.product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            //  اسم + سعر + ريتنج
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),
                  //  الوصف
                  Text(
                    widget.product.description,
                    style: TextStyle(
                      color: Colors.black87,
                      height: 1.5,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      SizedBox(width: 4),
                      Text(
                        widget.product.rating.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "\$${widget.product.price}",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),



                  SizedBox(height: 4),

                  //  Spicy level
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

                  SizedBox(height:10),

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

                  SizedBox(height:10),

                  //  Counter + Final Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Counter
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            icon: Icon(Icons.remove_circle, size: 30, color: Colors.red),
                          ),

                          Text(
                            quantity.toString(),
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),

                          IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: Icon(Icons.add_circle, size: 30, color: Colors.red),
                          ),
                        ],
                      ),

                      Text(
                        "\$${(widget.product.price * quantity).toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  //Order Now
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PaymentScreen.routeName);
                    },

                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //  Widgets
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
        border: Border.all(color: Colors.red),
      ),
      child: Text(text),
    );
  }
}
