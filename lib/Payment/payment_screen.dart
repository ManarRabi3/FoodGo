import 'package:flutter/material.dart';
import 'package:foodgo/Payment/paymentMethodCard.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = '/payment';
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedMethod = 1;
  bool saveCard = false;

  @override
  Widget build(BuildContext context) {

    var totalPrice = ModalRoute.of(context)!.settings.arguments as double;
    var totalWithFees = totalPrice + 0.3 + 1.5;



    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // HEADER
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

                //ORDER SUMMARY
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

                    summaryRow("Order", "\$${totalPrice.toStringAsFixed(2)}"),
                      summaryRow("Taxes", "\$0.3"),
                      summaryRow("Delivery fees", "\$1.5"),

                      Divider(height: 30),


                summaryRow("Total:",
                "\$${totalWithFees.toStringAsFixed(2)}",
                    isBold: true,
                       fontSize: 17,
    ),


                SizedBox(height: 6),
                      Text(
                        "Estimated delivery time:   15 - 30mins",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                // PAYMENT METHODS
                Text(
                  "Payment methods",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                // CREDIT CARD
                paymentMethodCard(
                  isSelected: selectedMethod == 1,
                  image: "https://cdn-icons-png.flaticon.com/512/196/196561.png",
                  title: "Credit card",
                  number: "5105 **** **** 0505",
                  onTap: () => setState(() => selectedMethod = 1),
                ),

                SizedBox(height: 15),

                // DEBIT CARD
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

                // TOTAL + PAY NOW
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
                            "\$${totalWithFees.toStringAsFixed(2)}",
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

  // Widgets

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


}
