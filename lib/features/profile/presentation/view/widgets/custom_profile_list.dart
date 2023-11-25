import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomProfileList extends StatelessWidget {
  const CustomProfileList({super.key, required this.title, required this.imagePath, required this.fun});
  final String title;
  final String imagePath;
  final void Function() fun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: ListTile(
        onTap: (){
          fun();
        },
        leading:Image.asset(imagePath) ,
        title:CustomTextWidget(title: title) ,
        trailing:const Icon(Icons.arrow_forward_ios) ,
      ),
    );
  }
}
