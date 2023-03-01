import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/ps4_console_blue_1.png",
                category: "Household",
                numOfBrands: 39,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image Popular Product 3.png",
                category: "Furniture",
                numOfBrands: 16,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image Popular Product 3.png",
                category: "Utility",
                numOfBrands: 20,
                press: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenHeight(160),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: getProportionateScreenHeight(140),
                  width: getProportionateScreenWidth(280),
                ),
                Container(
                  height: getProportionateScreenHeight(140),
                  width: getProportionateScreenWidth(280),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.2),
                        Color(0xFF343434).withOpacity(0.16),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(10.0),
                //   child: Text.rich(
                //     TextSpan(
                //       style: TextStyle(color: Colors.white),
                //       children: [
                //         TextSpan(
                //           text: "$category\n",
                //           style: TextStyle(
                //             fontSize: getProportionateScreenWidth(18),
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         TextSpan(text: "$numOfBrands items")
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
