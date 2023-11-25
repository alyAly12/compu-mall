import 'package:flutter/material.dart';


class CustomHeartButton extends StatelessWidget {
  const CustomHeartButton({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
      },
      child:  const Icon(
         Icons.favorite_border_rounded,
        color: Colors.red,
      ),
    );
  }
}