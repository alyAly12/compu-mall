import 'package:digital_store/core/utils/app_widgets/animated_text.dart';
import 'package:digital_store/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const AnimatedText(title: 'Compu Mall',) ,
        centerTitle: true,
      ),
      body: const HomeViewBody(),
    );
  }
}
