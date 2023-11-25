import 'package:digital_store/features/category/presentation/view/widgets/categories_custom_item.dart';
import 'package:digital_store/features/category/presentation/view/widgets/category_list_view.dart';
import 'package:flutter/material.dart';


class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CategoryListView())
      ],
    );
  }
}
