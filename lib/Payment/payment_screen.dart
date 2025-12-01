import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = '/payment';
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedMethod = 1; // 1 = credit card, 2 = debit card
  bool saveCard = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// ---------------- HEADER ----------------
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20),

                /// ---------------- ORDER SUMMARY ----------------
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order summary",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      summaryRow("Order", "\$16.48"),
                      summaryRow("Taxes", "\$0.3"),
                      summaryRow("Delivery fees", "\$1.5"),

                      Divider(height: 30),

                      summaryRow("Total:",
                          "\$18.19", isBold: true, fontSize: 17),

                      SizedBox(height: 6),
                      Text(
                        "Estimated delivery time:   15 - 30mins",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                /// ---------------- PAYMENT METHODS ----------------
                Text(
                  "Payment methods",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                /// CREDIT CARD
                paymentMethodCard(
                  isSelected: selectedMethod == 1,
                  image: "https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png",
                  title: "Credit card",
                  number: "5105 **** **** 0505",
                  onTap: () => setState(() => selectedMethod = 1),
                ),

                SizedBox(height: 15),

                /// DEBIT CARD
                paymentMethodCard(
                  isSelected: selectedMethod == 2,
                  image: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Visa_Inc._logo.svg",
                  title: "Debit card",
                  number: "3566 **** **** 0505",
                  onTap: () => setState(() => selectedMethod = 2),
                ),

                SizedBox(height: 15),

                /// SAVE CARD CHECKBOX
                Row(
                  children: [
                    Checkbox(
                      value: saveCard,
                      activeColor: Colors.red,
                      onChanged: (v) => setState(() => saveCard = v!),
                    ),
                    Text(
                      "Save card details for future payments",
                      style: TextStyle(color: Colors.black87),
                    )
                  ],
                ),

                SizedBox(height: 25),

                /// ---------------- TOTAL + PAY NOW ----------------
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total price",
                                style: TextStyle(color: Colors.grey[600])),
                            SizedBox(height: 4),
                            Text(
                              "\$18.19",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: Text(
                          "Pay Now",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ---------------- Widgets ----------------

  Widget summaryRow(String title, String value,
      {bool isBold = false, double fontSize = 15}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  fontSize: fontSize)),
          Text(value,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  fontSize: fontSize)),
        ],
      ),
    );
  }

  Widget paymentMethodCard({
    required bool isSelected,
    required String image,
    required String title,
    required String number,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black87 : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: isSelected ? Colors.black : Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Image.network(image, width: 55),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    number,
                    style: TextStyle(
                      color: isSelected ? Colors.white70 : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.circle_outlined,
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
