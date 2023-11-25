import 'package:digital_store/core/utils/app_colors.dart';
import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CategoriesCustomItem extends StatelessWidget {
  const CategoriesCustomItem({super.key, required this.image, required this.catTitle});
final String image;
final String catTitle;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      //TODO: add navigation
      onTap: (){},
      child: Container(
        height: size.height*0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.light2)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                height: double.infinity,
                width: size.width*0.4,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 14,),
            CustomTextWidget(title: catTitle),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
