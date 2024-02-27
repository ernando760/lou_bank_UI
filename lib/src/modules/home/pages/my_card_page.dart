import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank/src/widgets/action_sheet_my_card_widget.dart';
import 'package:lou_bank/src/widgets/pagination_card.dart';
import 'package:lou_bank_core/lou_bank_core.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});
  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  late final CarouselController carouselController;
  final currentPosition = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    currentPosition.value = ModalRoute.of(context)!.settings.arguments as int;
    return LouBankScaffold(
      height: MediaQuery.sizeOf(context).height,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LouBankAppBar(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              leading: LouBankCustomIconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFF313131)),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              title: Text(
                "Your Cards",
                style:
                    TextStyleLouBank.body16Medium.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            CarouselSlider(
                carouselController: carouselController,
                items: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: LouBankCardBig(
                      background: ColorsLouBank.gradientMint,
                      logo: SvgPicture.asset(
                        "assets/images/visa.svg",
                        height: 14,
                        colorFilter: const ColorFilter.mode(
                            Color(0xFF272A32), BlendMode.srcIn),
                      ),
                      price: '\$ 5,566.55',
                      chip: Image.asset(
                        "assets/images/credit_card_chip.png",
                        height: 27,
                      ),
                      codeCard: '•••• •••• •••• 4552',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: LouBankCardBig(
                      background: ColorsLouBank.gradientYellow,
                      logo: SvgPicture.asset(
                        "assets/images/visa.svg",
                        height: 14,
                        colorFilter: const ColorFilter.mode(
                            Color(0xFF272A32), BlendMode.srcIn),
                      ),
                      price: '\$ 5,566.55',
                      chip: Image.asset(
                        "assets/images/credit_card_chip.png",
                        height: 27,
                      ),
                      codeCard: '•••• •••• •••• 4552',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: LouBankCardBig(
                      background: ColorsLouBank.gradientPurple,
                      logo: SvgPicture.asset(
                        "assets/images/visa.svg",
                        height: 14,
                        colorFilter: const ColorFilter.mode(
                            Color(0xFF272A32), BlendMode.srcIn),
                      ),
                      price: '\$ 5,566.55',
                      chip: Image.asset(
                        "assets/images/credit_card_chip.png",
                        height: 27,
                      ),
                      codeCard: '•••• •••• •••• 4552',
                    ),
                  ),
                ],
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      currentPosition.value = index;
                    },
                    viewportFraction: .9,
                    initialPage: currentPosition.value,
                    aspectRatio: 2.0)),
            const SizedBox(
              height: 24,
            ),
            ValueListenableBuilder(
              valueListenable: currentPosition,
              builder: (context, v, _) => PaginationCard(currentPosition: v),
            ),
            const SizedBox(height: 30),
            const ActionSheetMyCardWidget(),
          ],
        ),
      ),
      louBankBottomNavigationBar: LouBankNavigationBar(navigationBarButtons: [
        LouBankNavigationBarItem(
            icon: SvgPicture.asset("assets/images/home.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/home.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon: SvgPicture.asset("assets/images/shop.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/shop.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon: SvgPicture.asset("assets/images/card.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/card.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon: SvgPicture.asset("assets/images/chat.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/chat.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
        LouBankNavigationBarItem(
            icon: SvgPicture.asset("assets/images/history.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/history.svg",
              colorFilter:
                  const ColorFilter.mode(ColorsLouBank.yellow, BlendMode.srcIn),
            )),
      ]),
    );
  }
}
