import 'package:flutter/material.dart';

import '../../../../../core/utils/app_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_widgets/subtitle_text_widget.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).cardColor,
                border: Border.all(
                    color: Theme.of(context).colorScheme.background,
                    width: 3),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png'),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(title: 'Mohamed aly'),
              SubTitleWidget(subTitle: 'example@gmail.com')
            ],
          )
        ],
      ),
    );
  }
}