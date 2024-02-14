import 'package:flutter/material.dart';
import 'package:lou_bank/src/widgets/app_bar_logo.dart';
import 'package:lou_bank/src/widgets/codes_widget.dart';
import 'package:lou_bank/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:lou_bank/src/widgets/keyboard_widget.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class PassCodePage extends StatelessWidget {
  const PassCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF433D48), ColorsLouBank.gray1])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AppBarLogo(),
                  const SizedBox(height: 68),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Center(
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
                              Navigator.of(context)
                                  .pushReplacementNamed("/login");
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
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
