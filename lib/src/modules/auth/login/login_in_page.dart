import 'package:flutter/material.dart';
import 'package:lou_bank/src/widgets/app_bar_logo.dart';
import 'package:lou_bank/src/widgets/custom_button_widget.dart';

class LoginInPage extends StatelessWidget {
  const LoginInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLogo(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/logo_2.png",
                ),
                const SizedBox(
                  height: 84,
                ),
                CustomButtonWidget(
                  onPressed: () {},
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
      ),
    );
  }
}
