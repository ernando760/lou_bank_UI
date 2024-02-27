import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class FinanceWidget extends StatelessWidget {
  const FinanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FINANCE",
            style:
                TextStyleLouBank.caption10Medium.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardSmallWidget(
                  icon: SvgPicture.asset("assets/images/cards/icons/star.svg"),
                  label: "My Bonuses",
                  color: ColorsLouBank.yellow,
                ),
                const SizedBox(
                  width: 14,
                ),
                CardSmallWidget(
                  icon:
                      SvgPicture.asset("assets/images/cards/icons/wallet.svg"),
                  label: "My budget",
                  color: ColorsLouBank.mint,
                ),
                const SizedBox(
                  width: 14,
                ),
                CardSmallWidget(
                  icon: SvgPicture.asset("assets/images/cards/icons/chart.svg"),
                  label: "Finance analysis",
                  color: ColorsLouBank.lilcac,
                ),
                const SizedBox(
                  width: 14,
                ),
                CardSmallWidget(
                  icon: SvgPicture.asset("assets/images/cards/icons/star.svg"),
                  label: "My bonuses",
                  color: ColorsLouBank.yellow,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
