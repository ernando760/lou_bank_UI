import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your balance",
            style: TextStyleLouBank.body15Regular.copyWith(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ 7,896",
                style: TextStyleLouBank.headline25Bold
                    .copyWith(color: Colors.white),
              ),
              LouBankCustomIconButton(
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
