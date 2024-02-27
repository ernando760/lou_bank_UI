import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank/src/widgets/custom_drop_down_button.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class ActionSheetMyCardWidget extends StatelessWidget {
  const ActionSheetMyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 28, left: 20, right: 20),
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF433D48), ColorsLouBank.gray1]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38), topRight: Radius.circular(38))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: TextStyleLouBank.headline21Regular
                    .copyWith(color: Colors.white),
              ),
              const CustomDropDownButton(),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            "Today",
            style:
                TextStyleLouBank.caption14Regular.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: ColorsLouBank.yellow, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transfer",
                          style: TextStyleLouBank.caption14Regular
                              .copyWith(color: Colors.white)),
                      Text(
                        "Incoming transfer",
                        style: TextStyleLouBank.caption14Regular
                            .copyWith(color: const Color(0xFF79767D)),
                      )
                    ],
                  )
                ],
              ),
              Text("+ \$ 3,110",
                  style: TextStyleLouBank.body16Medium
                      .copyWith(color: Colors.white))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: ColorsLouBank.mint, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/images/arrow_up.svg",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Heath",
                          style: TextStyleLouBank.caption14Regular
                              .copyWith(color: Colors.white)),
                      Text(
                        "Pharmacy",
                        style: TextStyleLouBank.caption14Regular
                            .copyWith(color: const Color(0xFF79767D)),
                      )
                    ],
                  )
                ],
              ),
              Text("- \$ 312,9",
                  style: TextStyleLouBank.body16Medium
                      .copyWith(color: Colors.white))
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            "June 13th",
            style:
                TextStyleLouBank.caption14Regular.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: ColorsLouBank.yellow, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transfer",
                          style: TextStyleLouBank.caption14Regular
                              .copyWith(color: Colors.white)),
                      Text(
                        "Incoming transfer",
                        style: TextStyleLouBank.caption14Regular
                            .copyWith(color: const Color(0xFF79767D)),
                      )
                    ],
                  )
                ],
              ),
              Text("+ \$ 3,110",
                  style: TextStyleLouBank.body16Medium
                      .copyWith(color: Colors.white))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: ColorsLouBank.mint, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/images/arrow_up.svg",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Heath",
                          style: TextStyleLouBank.caption14Regular
                              .copyWith(color: Colors.white)),
                      Text(
                        "Pharmacy",
                        style: TextStyleLouBank.caption14Regular
                            .copyWith(color: const Color(0xFF79767D)),
                      )
                    ],
                  )
                ],
              ),
              Text("- \$ 312,9",
                  style: TextStyleLouBank.body16Medium
                      .copyWith(color: Colors.white))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
