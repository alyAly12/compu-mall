import 'package:digital_store/core/utils/app_widgets/custom_text_widget.dart';
import 'package:digital_store/features/home/presentation/view/widgets/home_carsoul.dart';
import 'package:digital_store/features/home/presentation/view/widgets/latest_arrival_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCarousel(),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: CustomTextWidget(title: 'Latest Arrivals'),
              ),
              LatestArrivalListView()
            ],
          ),
        )
      ],
    );
  }
}
