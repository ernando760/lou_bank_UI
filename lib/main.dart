import 'package:flutter/material.dart';
import 'package:lou_bank/src/modules/auth/login/login_in_page.dart';
import 'package:lou_bank/src/modules/auth/passcode/pass_code_page.dart';
import 'package:lou_bank/src/modules/home/home_page.dart';
import 'package:lou_bank/src/modules/home/pages/my_card_page.dart';
import 'package:lou_bank/src/modules/splash/splash_page.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

void main() {
  runApp(const LouBankAppMain());
}

class LouBankAppMain extends StatelessWidget {
  const LouBankAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      theme: ThemeMainLouBank.theme,
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginInPage(),
        "/pass-code": (context) => const PassCodePage(),
        "/home": (context) => const HomePage(),
        "/my-card": (context) => const MyCardPage()
      },
    );
  }
}
