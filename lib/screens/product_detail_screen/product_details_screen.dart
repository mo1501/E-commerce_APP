import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../homepage/components/icon_buttons.dart';
import 'components/product_detail_body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
        leadingWidth: 60,
        backgroundColor: Colors.white,
        actions: [
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {},
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: ProductBodyDescription(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
