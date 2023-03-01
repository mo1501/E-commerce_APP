import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../components/icon_buttons.dart';
import '../components/search_field.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {},
          ),
          IconBtnWithCounter(
            icon: Icons.notifications_none,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
