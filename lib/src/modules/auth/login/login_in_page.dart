import 'package:flutter/material.dart';
import 'package:lou_bank/src/widgets/app_bar_logo.dart';
import 'package:lou_bank/src/widgets/custom_button_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class LoginInPage extends StatelessWidget {
  const LoginInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
              color: Colors.amber,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF433D48), ColorsLouBank.gray1])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppBarLogo(),
                const SizedBox(height: 172),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 42,
                          child: Image.asset(
                            "assets/images/logo_2.png",
                          ),
                        ),
                        const SizedBox(
                          height: 84,
                        ),
                        CustomButtonWidget(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed("/pass-code");
                          },
                          text: "Log in",
                        ),
                        const SizedBox(height: 16),
                        CustomButtonWidget(
                          isBlack: true,
                          onPressed: () {},
                          text: "Become a client of the bank",
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
