import 'package:flutter/material.dart';

import 'package:lou_bank_core/lou_bank_core.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
      {super.key,
      required this.img,
      required this.title,
      required this.subTitle,
      required this.value});
  final String img;
  final String title;
  final String subTitle;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        filterQuality: FilterQuality.medium,
                        image: AssetImage(img),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyleLouBank.body16Medium
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    subTitle,
                    style: TextStyleLouBank.caption14Regular
                        .copyWith(color: const Color(0xFF79767D)),
                  ),
                ],
              ),
            ],
          ),
          Text(value,
              style:
                  TextStyleLouBank.body16Medium.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
