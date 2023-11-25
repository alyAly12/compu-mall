import 'package:flutter/material.dart';

import 'latest_arrival_widget.dart';


class LatestArrivalListView extends StatelessWidget {
  const LatestArrivalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.antiAlias,
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:2/2.5,
            crossAxisSpacing: 0,
          mainAxisSpacing: 1
        ),
        itemBuilder: (context,index){
        return const LatestArrivalWidget();
        });
  }
}
