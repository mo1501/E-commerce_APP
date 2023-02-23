import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Text(
        'ShopIn',
        style: TextStyle(
          fontSize: getProportionateScreenWidth(50),
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        text,textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(35),
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
      ),
      Spacer(
        flex: 2,
      ),
      Image.asset(
        image,
        height: getProportionateScreenHeight(300),
        width: getProportionateScreenWidth(235),
      ),
    ]);
  }
}
