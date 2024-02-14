import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: ColorsLouBank.gray1),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.credit_card_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.history_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
