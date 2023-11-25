import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:digital_store/features/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const CustomTextWidget(title: 'Settings',fontSize: 25,),
      ),
      body: const ProfileViewBody(),
    );
  }
}