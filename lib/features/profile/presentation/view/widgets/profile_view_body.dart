import 'package:digital_store/core/utils/app_colors.dart';
import 'package:digital_store/core/utils/assets_manager.dart';
import 'package:digital_store/features/profile/presentation/view/widgets/custom_profile_list.dart';
import 'package:digital_store/features/profile/presentation/view/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_widgets/custom_text_widget.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        const Visibility(
          visible: false,
            child: CustomTextWidget(title:  'Please create an account to have unlimited access',maxLines: 2,)
        ),
        const ProfileHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(title: 'Generals'),
              CustomProfileList(title: 'Orders', imagePath: AssetsManager.orderImage, fun: (){}),
              CustomProfileList(title: 'WishList', imagePath: AssetsManager.wishListImage, fun: (){}),
              CustomProfileList(title: 'Recent', imagePath: AssetsManager.recentImage, fun: (){}),
              CustomProfileList(title: 'Address', imagePath: AssetsManager.addressImage, fun: (){}),
              const SizedBox(height: 25,),
              const CustomTextWidget(title: 'Account'),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
            onPressed: (){},
            icon: const Icon(Icons.login),
            label: const CustomTextWidget(title: 'Login'))
      ],
    );
  }
}


