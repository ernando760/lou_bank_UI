import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed("/my-card", arguments: 0);
          },
          child: LouBankCardMedium(
              icon: SvgPicture.asset("assets/images/visa.svg",
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF272A32), BlendMode.srcIn)),
              tag: "Salary",
              value: "\$ 2,230",
              gradientColor: ColorsLouBank.gradientMint,
              code: "**  6917"),
        ),
        const SizedBox(width: 14),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed("/my-card", arguments: 1);
          },
          child: LouBankCardMedium(
              icon: SvgPicture.asset("assets/images/visa.svg",
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF272A32), BlendMode.srcIn)),
              tag: "Salary",
              value: "\$ 2,230",
              gradientColor: ColorsLouBank.gradientYellow,
              code: "**  6917"),
        ),
        const SizedBox(width: 14),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed("/my-card", arguments: 2);
          },
          child: LouBankCardMedium(
              icon: SvgPicture.asset("assets/images/visa.svg",
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF272A32), BlendMode.srcIn)),
              tag: "Salary",
              value: "\$ 2,230",
              gradientColor: ColorsLouBank.gradientPurple,
              code: "**  6917"),
        ),
      ]),
    );
  }
}
