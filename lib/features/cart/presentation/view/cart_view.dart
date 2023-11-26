import 'package:digital_store/core/utils/app_widgets/empty_screen.dart';
import 'package:digital_store/core/utils/assets_manager.dart';
import 'package:digital_store/features/cart/presentation/view/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_widgets/animated_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isEmpty = false;
    return _isEmpty
        ?EmptyScreen(
        title: 'Whoops!',
        secondTitle: 'Your cart is empty',
        thirdTitle: 'Go ahead & Explore',
        image: AssetsManager.shoppingCart,
        fun: (){})
        :Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:const AnimatedText(title: 'Cart(2)',) ,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.delete_outline,color: Colors.red,))
        ],
      ),
      body: const CartViewBody(),
    );
  }
}
