

import 'package:digital_store/features/cart/presentation/view/cart_view.dart';
import 'package:digital_store/features/category/presentation/view/category_view.dart';
import 'package:digital_store/features/home/presentation/view/home_view.dart';
import 'package:digital_store/features/profile/presentation/view/profile_view.dart';
import 'package:digital_store/features/search/presentation/view/search_view.dart';
import 'package:digital_store/root_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kHomeView = '/homeView';
  static const kDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
      routes: [
        GoRoute(path: '/',
        builder: (context,state)=>const RootScreen()
        ),
        GoRoute(
          name: 'home-view',
            path: '/home-view',
            builder: (context,state)=>const HomeView()
        ),
        GoRoute(
            name: 'search-view',
            path: '/search-view',
            builder: (context,state)=>const SearchView()
        ),
        GoRoute(
            name: 'cart-view',
            path: '/cart-view',
            builder: (context,state)=>const CartView()
        ),
        GoRoute(
            name: 'profile-view',
            path: '/profile-view',
            builder: (context,state)=>const ProfileView()
        ),
        GoRoute(
            name: 'category-view',
            path: '/category-view',
            builder: (context,state)=>const CategoryView()
        ),
  ]);

}

