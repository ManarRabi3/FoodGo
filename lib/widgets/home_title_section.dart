import 'package:flutter/material.dart';

class HomeTitleSection extends StatelessWidget {
  const HomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
            image: AssetImage('assets/images/Food_black.png'),
            height: 60,
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
            image: AssetImage(
                'assets/images/Order your favourite food!.png'),
            height: 20,
          ),
        ),
      ],
    );
  }
}
