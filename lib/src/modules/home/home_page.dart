import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LouBankScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LouBankAppBar(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              title: SvgPicture.asset('assets/images/logo_1.svg'),
              leading: const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your balance",
                    style: TextStyleLouBank.body15Regular
                        .copyWith(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ 7,896",
                        style: TextStyleLouBank.headline25Bold
                            .copyWith(color: Colors.white),
                      ),
                      LouBankCustomIconButton(
                          icon: const Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                LouBankCardMedium(
                    imgPath: "assets/images/visa.svg",
                    tag: "Salary",
                    value: "\$ 2,230",
                    gradientColor: ColorsLouBank.gradientMint,
                    code: "**  6917"),
                SizedBox(width: 14),
                LouBankCardMedium(
                    imgPath: "assets/images/visa.svg",
                    tag: "Savings account",
                    value: "\$ 2,230",
                    gradientColor: ColorsLouBank.gradientYellow,
                    code: "**  6917"),
                SizedBox(width: 14),
                LouBankCardMedium(
                    imgPath: "assets/images/visa.svg",
                    tag: "Savings account",
                    value: "\$ 2,230",
                    gradientColor: ColorsLouBank.gradientPurple,
                    code: "**  6917"),
              ]),
            ),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FINANCE",
                    style: TextStyleLouBank.caption10Medium
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardSmallWidget(
                          icon: SvgPicture.asset(
                              "assets/images/cards/icons/star.svg"),
                          label: "My Bonuses",
                          color: ColorsLouBank.yellow,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        CardSmallWidget(
                          icon: SvgPicture.asset(
                              "assets/images/cards/icons/wallet.svg"),
                          label: "My budget",
                          color: ColorsLouBank.mint,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        CardSmallWidget(
                          icon: SvgPicture.asset(
                              "assets/images/cards/icons/chart.svg"),
                          label: "Finance analysis",
                          color: ColorsLouBank.lilcac,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        CardSmallWidget(
                          icon: SvgPicture.asset(
                              "assets/images/cards/icons/star.svg"),
                          label: "My bonuses",
                          color: ColorsLouBank.yellow,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              padding: const EdgeInsets.only(top: 28, left: 20, right: 20),
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xFF433D48), ColorsLouBank.gray1]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38))),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // CURRENT LOANS
                          Row(
                            children: [
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 18,
                                color: Color(0xFF79767D),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "CURRENT LOANS",
                                style: TextStyleLouBank.caption10Medium
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          LouBankCustomIconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              iconSize: 12,
                              style: IconButton.styleFrom(
                                  backgroundColor: const Color(0xFF3E3E3E)),
                              constraints: const BoxConstraints(
                                  maxWidth: 28, maxHeight: 28),
                              onPressed: () {})
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 22),
                        decoration: BoxDecoration(
                            color: const Color(0xFF212121),
                            borderRadius: BorderRadius.circular(26)),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                  color: ColorsLouBank.mint,
                                  borderRadius: BorderRadius.circular(12)),
                              child: LouBankCustomIcon(
                                  icon: SvgPicture.asset(
                                "assets/images/creditcard_face.svg",
                              )),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Account № 3874825",
                                        style: TextStyleLouBank.body15Regular
                                            .copyWith(color: Colors.white),
                                      ),
                                      Text("\$ 78,92",
                                          style: TextStyleLouBank.body15Regular
                                              .copyWith(color: Colors.white)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Expires 12/22/2023",
                                        style: TextStyleLouBank.caption12Regular
                                            .copyWith(
                                                color: const Color(0xFF79767D)),
                                      ),
                                      Text(
                                        "Rate 3.5%",
                                        style: TextStyleLouBank.caption12Regular
                                            .copyWith(
                                                color: const Color(0xFF79767D)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, top: 22, bottom: 22),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: ColorsLouBank.gradientMint.colors,
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.circular(26)),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                  color: ColorsLouBank.gray1,
                                  borderRadius: BorderRadius.circular(12)),
                              child: LouBankCustomIcon(
                                  icon: Image.asset("assets/images/shock.png")),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Start investing now!",
                                    style: TextStyleLouBank.body15SemiBold,
                                  ),
                                  Text(
                                    "protected savings and investment plans",
                                    textScaler: const TextScaler.linear(.8),
                                    style: TextStyleLouBank.caption12Regular,
                                  )
                                ],
                              ),
                            ),
                            const Flexible(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                        child: Icon(
                                      Icons.close,
                                      size: 16,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 35),
                      // CURRENCIES AND METALS
                      Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 18,
                            color: Color(0xFF79767D),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "CURRENCIES AND METALS",
                            style: TextStyleLouBank.caption10Medium
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: const Color(0xFF212121),
                            borderRadius: BorderRadius.circular(26)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    "Currencie",
                                    style: TextStyleLouBank.caption12Regular
                                        .copyWith(
                                            color: const Color(0xFF79767D)),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Buy",
                                        style: TextStyleLouBank.caption12Regular
                                            .copyWith(
                                          color: const Color(0xFF79767D),
                                        )),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Sell",
                                        style: TextStyleLouBank.caption12Regular
                                            .copyWith(
                                          color: const Color(0xFF79767D),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: ColorsLouBank.mint,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Icon(
                                        Icons.attach_money,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "USD",
                                      style: TextStyleLouBank.body15Regular
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Text("\$ 78,92",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white)),
                                Text("\$ 78,29",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white))
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: ColorsLouBank.mint,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Icon(
                                        Icons.euro,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "EUR",
                                      style: TextStyleLouBank.body15Regular
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Text("\$ 78,92",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white)),
                                Text("\$ 78,29",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: const Color(0xFF212121),
                            borderRadius: BorderRadius.circular(26)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    "Metals",
                                    style: TextStyleLouBank.caption12Regular
                                        .copyWith(
                                            color: const Color(0xFF79767D)),
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Buy",
                                        style: TextStyleLouBank.caption12Regular
                                            .copyWith(
                                          color: const Color(0xFF79767D),
                                        )),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Text("Sell",
                                      style: TextStyleLouBank.caption12Regular
                                          .copyWith(
                                        color: const Color(0xFF79767D),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: ColorsLouBank.mint,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: SvgPicture.asset(
                                            "assets/images/metal.svg")),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Gold",
                                      style: TextStyleLouBank.body15Regular
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Text("\$ 78,92",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white)),
                                Text("\$ 78,29",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white))
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: ColorsLouBank.mint,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: SvgPicture.asset(
                                            "assets/images/metal.svg")),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Sliver",
                                      style: TextStyleLouBank.body15Regular
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Text("\$ 78,92",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white)),
                                Text("\$ 78,29",
                                    style: TextStyleLouBank.body15Regular
                                        .copyWith(color: Colors.white))
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
