import 'package:flutter/material.dart';

class CodesWidget extends StatelessWidget {
  const CodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF5C5762)),
        ),
        const SizedBox(width: 20),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF5C5762)),
        ),
        const SizedBox(width: 20),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF5C5762)),
        ),
        const SizedBox(width: 20),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF5C5762)),
        ),
        const SizedBox(width: 20),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF5C5762)),
        )
      ],
    );
  }
}
