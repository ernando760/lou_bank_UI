import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class PaginationCard extends StatefulWidget {
  const PaginationCard({super.key, required this.currentPosition});
  final int currentPosition;
  @override
  State<PaginationCard> createState() => _PaginationCardState();
}

class _PaginationCardState extends State<PaginationCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Builder(builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedContainer(
              transformAlignment: Alignment.topCenter,
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
              width: widget.currentPosition == 0 ? 10 : 5,
              height: widget.currentPosition == 0 ? 10 : 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.currentPosition == 0
                      ? ColorsLouBank.mint
                      : const Color(0xFF5D5662)),
            ),
            const SizedBox(
              width: 10,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
              width: widget.currentPosition == 1 ? 10 : 5,
              height: widget.currentPosition == 1 ? 10 : 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.currentPosition == 1
                      ? ColorsLouBank.yellow
                      : const Color(0xFF5D5662)),
            ),
            const SizedBox(
              width: 10,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
              width: widget.currentPosition == 2 ? 10 : 5,
              height: widget.currentPosition == 2 ? 10 : 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.currentPosition == 2
                      ? ColorsLouBank.lilcac
                      : const Color(0xFF5D5662)),
            ),
          ],
        );
      }),
    );
  }
}
