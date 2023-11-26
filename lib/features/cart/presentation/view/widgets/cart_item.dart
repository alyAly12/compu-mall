import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:digital_store/features/cart/presentation/view/widgets/qty_bottom_sheet.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_widgets/custom_heart_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl: 'https://m.media-amazon.com/images/I/41ga9nae8pL._AC_SX679_.jpg',
                  height: size.height * 0.18,
                  width: size.height * 0.18,
                ),
              ),
              const SizedBox(width: 15,),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(
                     width: size.width * 0.4,
                     height: size.width*0.12,
                     child: const CustomTextWidget(title: 'this product',
                       maxLines: 2,
                     ),
                   ),
                     SizedBox(height: size.height*0.01,),
                    SizedBox(
                      width: size.width * 0.4,
                      child: const CustomTextWidget(title: 'Price: \$ 2000',
                        color: Colors.green,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                    Center(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 1, color: AppColors.lightPrimary),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                          onPressed: ()async{
                          await showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return const QuantityBottomSheet();
                              });
                          },
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          label: const CustomTextWidget(title: 'Qty')
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width*0.01,),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: size.height*0.02,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomHeartButton(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
