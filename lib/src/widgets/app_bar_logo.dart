import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class AppBarLogo extends StatefulWidget implements PreferredSizeWidget {
  const AppBarLogo({super.key});

  @override
  State<AppBarLogo> createState() => _AppBarLogoState();

  @override
  Size get preferredSize => const Size.fromHeight(88);
}

class _AppBarLogoState extends State<AppBarLogo> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
