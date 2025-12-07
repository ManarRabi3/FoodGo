import 'package:flutter/material.dart';

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