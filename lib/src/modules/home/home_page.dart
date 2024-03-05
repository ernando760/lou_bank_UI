import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank/src/widgets/action_sheet_home_page_widget.dart';
import 'package:lou_bank/src/widgets/balance_widget.dart';
import 'package:lou_bank/src/widgets/cards_widget.dart';
import 'package:lou_bank/src/widgets/finance_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LouBankScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LouBankAppBar(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              title: SvgPicture.asset('assets/images/logos/logo_small.svg'),
              leading: const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const BalanceWidget(),
            const SizedBox(
              height: 24,
            ),
            const CardsWidget(),
            const SizedBox(
              height: 39,
            ),
            const FinanceWidget(),
            const SizedBox(
              height: 35,
            ),
            const ActionSheetHomePageWidget(),
          ],
        ),
      ),
      louBankBottomNavigationBar: LouBankNavigationBar(navigationBarButtons: [
        LouBankNavigationBarItem(
            icon:
                SvgPicture.asset("assets/images/navigation_bar_icons/home.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/navigation_bar_icons/home.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon:
                SvgPicture.asset("assets/images/navigation_bar_icons/shop.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/navigation_bar_icons/shop.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon:
                SvgPicture.asset("assets/images/navigation_bar_icons/card.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/navigation_bar_icons/card.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon:
                SvgPicture.asset("assets/images/navigation_bar_icons/chat.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/navigation_bar_icons/chat.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/history.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/navigation_bar_icons/history.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
      ]),
    );
  }
}
