import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_store/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget>banners=[
      Image.asset(AssetsManager.banner1,fit: BoxFit.cover,),
      Image.asset(AssetsManager.banner2,fit: BoxFit.cover,)
    ];
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: CarouselSlider(
          items: banners,
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.99,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }
}
