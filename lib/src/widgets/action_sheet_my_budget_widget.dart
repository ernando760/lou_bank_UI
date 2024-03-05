import 'package:flutter/material.dart';
import 'package:lou_bank/src/widgets/list_item_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class ActionSheetMyBudgetWidget extends StatelessWidget {
  const ActionSheetMyBudgetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: RadialGradient(
            center: Alignment.bottomLeft,
            radius: 2.5,
            colors: [
              const Color(0xFF433D48).withOpacity(.6),
              Colors.transparent
            ]),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(36), topRight: Radius.circular(36)),
      ),
      child: DraggableScrollableSheet(
        expand: true,
        initialChildSize: .9,
        builder: (context, scrollController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 22, bottom: 15),
                child: Text(
                  "June 15, 2024",
                  style: TextStyleLouBank.headline21SemiBold
                      .copyWith(color: Colors.white),
                ),
              ),
              const Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListItemWidget(
                          img: "assets/images/list_itens/webflow.png",
                          title: "WebFlow",
                          subTitle: "Outcoming transfer",
                          value: "- \$45"),
                      ListItemWidget(
                          img: "assets/images/list_itens/sketch.png",
                          title: "Sketch",
                          subTitle: "Annual withdrawal of funds",
                          value: "- \$79"),
                      ListItemWidget(
                          img: "assets/images/list_itens/youtube.jpg",
                          title: "Youtube",
                          subTitle: "Annual withdrawal of funds",
                          value: "- \$15"),
                      ListItemWidget(
                          img: "assets/images/list_itens/unsplash.jpg",
                          title: "Unsplash",
                          subTitle: "Annual withdrawal of funds",
                          value: "- \$9"),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
