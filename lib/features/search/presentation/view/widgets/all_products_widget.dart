import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_widgets/custom_bag_button.dart';
import '../../../../../core/utils/app_widgets/custom_heart_button.dart';
import '../../../../../core/utils/app_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_widgets/subtitle_text_widget.dart';

class AllProductWidget extends StatelessWidget {
  const AllProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: FancyShimmerImage(
            imageUrl:'https://m.media-amazon.com/images/I/71SkQ-Zj79L.__AC_SY300_SX300_QL70_ML2_.jpg',
            // getCurrentProduct.productImage,
            // productModelProvider.productImage,
            height: size.height * 0.2,
            width: size.height * 0.2,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 5,
              child: CustomTextWidget(
                  title:'This Product'
                  // getCurrentProduct.productTitle
                // productModelProvider.productTitle
              ),),
            CustomHeartButton()
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
                flex: 5,
                child: SubTitleWidget(
                  subTitle:'\$2200',
                  // '\$${getCurrentProduct.productPrice
                  // // productModelProvider.productPrice
                  // }' ,
                  maxLines: 1,
                  color: Colors.blue,
                  fontSize: 20,
                )),
            CustomBagButton()
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
