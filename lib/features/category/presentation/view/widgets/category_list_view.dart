import 'package:digital_store/features/category/data/caegory_model_list.dart';
import 'package:digital_store/features/category/presentation/view/widgets/categories_custom_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:CategoryModelList.categoryList.length ,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(top: 12,left: 4,right: 4),
            child: CategoriesCustomItem(
                image: CategoryModelList.categoryList[index].image,
                catTitle: CategoryModelList.categoryList[index].name
            ),
          );
        });
  }
}
