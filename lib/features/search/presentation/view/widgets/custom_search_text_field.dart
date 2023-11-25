import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.searchController, required this.onChanged, required this.onSubmitted,
  });

  final TextEditingController searchController;
  final Function(String) onChanged;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: Colors.grey
            ),
            borderRadius: BorderRadius.circular(12)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: Colors.grey
            ),
            borderRadius: BorderRadius.circular(12)
        ),
        errorBorder:OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: Colors.red
            ),
            borderRadius: BorderRadius.circular(12)
        ),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search_outlined),
        suffixIcon: IconButton(
            onPressed: (){
              searchController.clear();
              FocusScope.of(context).unfocus();
            },
            icon: const Icon(Icons.clear,color: Colors.red,)
        ),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }
}