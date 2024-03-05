import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank/src/widgets/action_sheet_my_budget_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class MyBudgetPage extends StatelessWidget {
  const MyBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LouBankScaffold(
      height: MediaQuery.sizeOf(context).height,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // App bar
            LouBankAppBar(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              leading: LouBankCustomIconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFF313131)),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              title: Text(
                "My Budget",
                style:
                    TextStyleLouBank.body16Medium.copyWith(color: Colors.white),
              ),
              traling: LouBankCustomIconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.white,
                  )),
            ),
            // Info card
            Container(
              margin: const EdgeInsets.only(
                  top: 24, left: 20, right: 20, bottom: 54),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorsLouBank.gray2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$1,345",
                        style: TextStyleLouBank.headline21SemiBold
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        "September forecast \$2,010",
                        style: TextStyleLouBank.caption12Regular
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Text("June, 2020",
                      style: TextStyleLouBank.caption12Regular
                          .copyWith(color: Colors.white))
                ],
              ),
            ),
            // Graph
            const LouBankLineChart(),
            const SizedBox(
              height: 20,
            ),
            // Action sheet
            const ActionSheetMyBudgetWidget()
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
