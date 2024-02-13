import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, required this.text, this.onPressed, this.isBlack = false});
  final String text;
  final VoidCallback? onPressed;
  final bool isBlack;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(38),
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: isBlack ? ColorsLouBank.gray1 : null,
              borderRadius: BorderRadius.circular(38),
              gradient: !isBlack
                  ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                          Colors.white,
                          ColorsLouBank.yellow,
                        ])
                  : null,
            ),
            child: Center(
                child: Text(
              text,
              style: isBlack
                  ? TextStyleLouBank.caption14Medium
                      .copyWith(color: Colors.white, fontSize: 15)
                  : TextStyleLouBank.caption14Medium.copyWith(fontSize: 15),
            )),
          ),
        ),
      ),
    );
  }
}
