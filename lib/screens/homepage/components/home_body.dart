import 'package:ecommerce_app/screens/homepage/components/specialforyou.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
// import 'categories.dart';
// import 'discount_banner.dart';
import 'categories.dart';
import 'home_header.dart';
import 'populart_products.dart';
// import 'popular_product.dart';
// import 'special_offers.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(4)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            //DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
