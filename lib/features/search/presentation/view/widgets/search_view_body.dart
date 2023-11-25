import 'package:digital_store/features/search/presentation/view/widgets/all_products_widget.dart';
import 'package:digital_store/features/search/presentation/view/widgets/product_search_grid_view.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController =TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
      child: Column(
        children: [
          CustomSearchTextField(searchController: searchController,
            onChanged: (value ) {  },
            onSubmitted: (value ) {  },),
      const SizedBox(height: 12,),
      Expanded(
        child: GridView.builder(

            itemCount: 10,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio:2/2.6 ),
            itemBuilder: (context,index){
              return const AllProductWidget();
            }
        ),
      )
        ],
      ),
    );
  }
}


