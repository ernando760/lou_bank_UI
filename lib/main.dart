import 'package:flutter/material.dart';
import 'package:lou_bank/src/modules/auth/login/login_in_page.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

void main() {
  runApp(const LouBankAppMain());
}

class LouBankAppMain extends StatelessWidget {
  const LouBankAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      theme: ThemeMainLouBank.theme,
      routes: {
        "/login": (context) => const LoginInPage(),
      },
    );
  }
}
