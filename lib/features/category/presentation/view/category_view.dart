import 'package:digital_store/features/category/presentation/view/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_widgets/animated_text.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const AnimatedText(title: 'Categories'),
      ),
      body: const CategoryViewBody(),
    );
  }
}