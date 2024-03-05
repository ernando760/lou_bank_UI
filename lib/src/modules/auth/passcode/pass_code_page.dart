import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank/src/widgets/codes_widget.dart';
import 'package:lou_bank/src/widgets/keyboard_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class PassCodePage extends StatelessWidget {
  const PassCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LouBankScaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              LouBankAppBar(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  title: SvgPicture.asset('assets/images/logos/logo_small.svg'),
                  traling: LouBankCustomIconButton(
                      icon: const Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {})),
              const SizedBox(height: 68),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Enter Passcode",
                      style: TextStyleLouBank.body16Regular
                          .copyWith(fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    const CodesWidget(),
                    const SizedBox(height: 59),
                    const KeyboardWidget(),
                    const SizedBox(height: 24),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/login");
                      },
                      child: Text(
                        "Can not login?",
                        style: TextStyleLouBank.caption14Regular.copyWith(
                            fontSize: 13, color: ColorsLouBank.yellow),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        louBankBottomNavigationBar:
            LouBankNavigationBar(disableIcon: true, navigationBarButtons: [
          LouBankNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/images/navigation_bar_icons/home.svg"),
              activeIcon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/home.svg",
                colorFilter: const ColorFilter.mode(
                    ColorsLouBank.yellow, BlendMode.srcIn),
              )),
          LouBankNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/images/navigation_bar_icons/shop.svg"),
              activeIcon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/shop.svg",
                colorFilter: const ColorFilter.mode(
                    ColorsLouBank.yellow, BlendMode.srcIn),
              )),
          LouBankNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/images/navigation_bar_icons/card.svg"),
              activeIcon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/card.svg",
                colorFilter: const ColorFilter.mode(
                    ColorsLouBank.yellow, BlendMode.srcIn),
              )),
          LouBankNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/images/navigation_bar_icons/chat.svg"),
              activeIcon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/chat.svg",
                colorFilter: const ColorFilter.mode(
                    ColorsLouBank.yellow, BlendMode.srcIn),
              )),
          LouBankNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/images/navigation_bar_icons/history.svg"),
              activeIcon: SvgPicture.asset(
                "assets/images/navigation_bar_icons/history.svg",
                colorFilter: const ColorFilter.mode(
                    ColorsLouBank.yellow, BlendMode.srcIn),
              )),
        ]));
  }
}
