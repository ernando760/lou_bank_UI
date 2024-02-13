import 'package:flutter/material.dart';
import 'package:lou_bank/src/widgets/custom_button_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsLouBank.gray1,
        title: Image.asset(
          "assets/images/logo_1.png",
        ),
        toolbarHeight: 88,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
      ),
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
