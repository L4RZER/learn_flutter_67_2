// step4: sperate the Home widget into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

/// step5: container, column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // step6: image widget
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/fl1.jpg"),
        const SizedBox(height: 10),
        Image.network(
          "https://imagedelivery.net/c2SKP8Bk0ZKw6UDgeeIlbw/7611d546-a353-453b-dc7d-8eab636b3800/public"
        )
      ],
    );
  }
}