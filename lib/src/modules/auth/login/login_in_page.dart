import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class LoginInPage extends StatelessWidget {
  const LoginInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LouBankScaffold(
      height: MediaQuery.sizeOf(context).height,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LouBankAppBar(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                title: SvgPicture.asset('assets/images/logo_1.svg'),
                traling: LouBankCustomIconButton(
                    icon: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            const SizedBox(height: 172),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      "assets/images/logo_2.svg",
                    ),
                    const SizedBox(
                      height: 84,
                    ),
                    LouBankCustomButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed("/pass-code");
                      },
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                ColorsLouBank.yellow,
                              ]),
                          borderRadius: BorderRadius.circular(38)),
                      width: MediaQuery.sizeOf(context).width,
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyleLouBank.caption14Medium
                              .copyWith(fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    LouBankCustomButton(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      onPressed: () {},
                      child: Text(
                        "Become a client of the bank",
                        style: TextStyleLouBank.caption14Medium
                            .copyWith(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
