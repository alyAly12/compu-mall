import 'package:digital_store/features/cart/presentation/view/cart_view.dart';
import 'package:digital_store/features/category/presentation/view/category_view.dart';
import 'package:digital_store/features/home/presentation/view/home_view.dart';
import 'package:digital_store/features/profile/presentation/view/profile_view.dart';
import 'package:digital_store/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentScreen = 0;
  late PageController pageController;
  List<Widget>screens =[
    const HomeView(),
    const SearchView(),
    const CategoryView(),
    const CartView(),
    const ProfileView()
  ];
@override
  void initState() {
    pageController = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics:const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
          indicatorColor: AppColors.lightPrimary,
          elevation: 0,
          selectedIndex: currentScreen,
          height: kBottomNavigationBarHeight,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          onDestinationSelected: (int index){
            setState(() {
              currentScreen = index;
            });
            pageController.jumpToPage(currentScreen);
          },
          destinations:const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: ''
            ),
            NavigationDestination(
                icon: Icon(Icons.search_outlined),
                label: ''
            ),
            NavigationDestination(
                icon: Icon(Icons.list),
                label: ''
            ),
            NavigationDestination(
                icon: Icon(Icons.shopping_basket_outlined),
                label: ''
            ),
            NavigationDestination(
                icon: Icon(Icons.person_2_outlined),
                label: ''
            ),
          ]
      ),
    );
  }
}
