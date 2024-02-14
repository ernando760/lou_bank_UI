import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 47),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        addAutomaticKeepAlives: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const KeyBoardButton(number: "1"),
          const KeyBoardButton(number: "2", letter: "A B C"),
          const KeyBoardButton(number: "3", letter: "D E F"),
          const KeyBoardButton(number: "4", letter: "G H I"),
          const KeyBoardButton(number: "5", letter: "J K L"),
          const KeyBoardButton(number: "6", letter: "M N O"),
          const KeyBoardButton(number: "7", letter: "P Q R S"),
          const KeyBoardButton(number: "8", letter: "T U V"),
          const KeyBoardButton(number: "9", letter: "W X Y Z"),
          Container(),
          const KeyBoardButton(number: "0"),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/back.svg")),
        ],
      ),
    );
  }
}

class KeyBoardButton extends StatefulWidget {
  const KeyBoardButton({super.key, required this.number, this.letter});
  final String number;
  final String? letter;

  @override
  State<KeyBoardButton> createState() => _KeyBoardButtonState();
}

class _KeyBoardButtonState extends State<KeyBoardButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xFF363339),
              borderRadius: BorderRadius.circular(50)),
          width: 65,
          height: 65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.number,
                style: TextStyleLouBank.headline21Regular
                    .copyWith(fontSize: 30, color: Colors.white),
              ),
              widget.letter != null
                  ? Text(
                      widget.letter!,
                      style: TextStyleLouBank.body16Regular
                          .copyWith(fontSize: 12, color: Colors.white),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
