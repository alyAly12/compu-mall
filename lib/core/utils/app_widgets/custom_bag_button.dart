import 'package:flutter/material.dart';


class CustomBagButton extends StatelessWidget {
  const CustomBagButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        // if (cartProvider.isProductInCart(
        //     productId: getCurrentProduct!.productId)) {
        //   return;
        // }
        // cartProvider.addProductToCart(productId: getCurrentProduct.productId);
      },
      child: const Icon(
        // cartProvider.isProductInCart(productId: productId)
        //     ? Icons.check
        //     :
        Icons.add_shopping_cart_rounded,
        color: Colors.blue,
      ),
    );
  }
  }

