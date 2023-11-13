import 'package:animate_do/animate_do.dart';
import 'package:bitcoin_app/constant.dart';
import 'package:bitcoin_app/screens/trade_page.dart';
import 'package:bitcoin_app/widgets/buttons.dart';
import 'package:bitcoin_app/widgets/card_list.dart';
import 'package:bitcoin_app/widgets/header.dart';
import 'package:bitcoin_app/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Header(),
            const SizedBox(height: 20),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Get.to(() => const TradePage());
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  left: 10,
                  right: 10,
                ),
                child: FadeInUp(
                  duration: const Duration(milliseconds: 900),
                  child: Container(
                    height: 69,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [kGradientColorTwo, kLinearTwo],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 11,
                                  vertical: 9,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/add.svg',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Trade Crypto',
                                style: kInfo.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'sell now',
                                style: kInfo.copyWith(
                                  color: Colors.white30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 7,
                bottom: 7,
                left: 10,
                right: 10,
              ),
              child: FadeInUp(
                duration: const Duration(milliseconds: 900),
                child: Container(
                  height: 69,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [kGradientColorTwo, kLinearTwo],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 11,
                                vertical: 9,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/add.svg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Trade Gift Card',
                              style: kInfo.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'sell now',
                              style: kInfo.copyWith(
                                color: Colors.white30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const SectionTitle(title: 'My Cards'),
            const SizedBox(height: 15),
            const CardList(),
            const SizedBox(height: 40),
            const Buttons(),
            const SizedBox(height: 30),
            const SectionTitle(title: 'Activity'),
            const SizedBox(height: 15),
            // const Chart(),
          ],
        ),
      ),
    );
  }
}
