import 'package:digital_store/core/utils/app_colors.dart';
import 'package:digital_store/core/utils/app_widgets/custom_heart_button.dart';
import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:digital_store/core/utils/app_widgets/subtitle_text_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class LatestArrivalWidget extends StatelessWidget {
  const LatestArrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.light2
          )
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:FancyShimmerImage(
                imageUrl: 'https://m.media-amazon.com/images/I/61PlEMYIbeL.__AC_SX300_SY300_QL70_ML2_.jpg',
              boxFit: BoxFit.fill,
                width: double.infinity,
                height: size.height*0.20,
              ),
            ),
            const SizedBox(height: 8,),
            const SubTitleWidget(
              subTitle: 'Lenovo-LEGION xps',
              maxLines: 1,
            fontSize: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextWidget(title: '\$ 1200',color: AppColors.light2,),
                CustomHeartButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}
