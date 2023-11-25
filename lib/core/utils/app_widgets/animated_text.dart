import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  FlickerNeonText(
        text: title,
        flickerTimeInMilliSeconds: 800,
        spreadColor: Colors.green,
        blurRadius: 10,
        textSize: 25,
        );
  }
}
