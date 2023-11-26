import 'package:digital_store/core/utils/app_widgets/subtitle_text_widget.dart';
import 'package:flutter/material.dart';

class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 6,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Center(
                        child: SubTitleWidget(subTitle: '${index+1}'),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
