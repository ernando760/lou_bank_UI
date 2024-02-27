import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1F1F),
          borderRadius: BorderRadius.circular(30)),
      child: DropdownButton(
        underline: Container(),
        menuMaxHeight: 82,
        borderRadius: BorderRadius.circular(30),
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.white,
        ),
        iconSize: 18,
        dropdownColor: const Color(0xFF1E1F1F),
        hint: Text("Filter",
            style: TextStyleLouBank.caption14Regular
                .copyWith(color: Colors.white)),
        style: TextStyleLouBank.caption14Regular.copyWith(color: Colors.white),
        elevation: 0,
        items: const [
          DropdownMenuItem(
            value: 0,
            child: ColoredBox(
                color: Colors.red,
                child: Padding(
                    padding: EdgeInsets.only(right: 6), child: Text("teste"))),
          )
        ],
        onChanged: (value) {},
      ),
    );
  }
}
