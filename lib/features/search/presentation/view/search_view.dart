import 'package:digital_store/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_widgets/animated_text.dart';
import '../../../../core/utils/app_widgets/empty_screen.dart';
import '../../../../core/utils/assets_manager.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isEmpty =false;
    return _isEmpty
        ?EmptyScreen(
        title: 'Whoops!',
        secondTitle: 'No products found',
        thirdTitle: 'Go ahead & Explore',
        image: AssetsManager.emptySearch,
        fun: (){})
        : GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title:const AnimatedText(title: 'All Products'),
        ),
        body: const SearchViewBody(),
      ),
    );
  }
}