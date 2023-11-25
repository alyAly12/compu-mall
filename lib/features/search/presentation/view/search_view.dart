import 'package:digital_store/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_widgets/animated_text.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
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