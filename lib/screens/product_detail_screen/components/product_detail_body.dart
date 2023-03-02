import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../size_config.dart';
import '../../components/default_button.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import '../components/product_images.dart';

class ProductBodyDescription extends StatelessWidget {
  final Product product;

  const ProductBodyDescription({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: kSecondaryColor.withOpacity(0.5),
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
            ],
          ),
        ),
        TopRoundedContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: getProportionateScreenHeight(80),
              top: getProportionateScreenHeight(10),
            ),
            child: Column(
              children: [
                ColorDots(product: product),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Total:  \$${product.price}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(42),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(45),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultButton(
            text: "Add To Cart",
            press: () {},
          ),
        ),
      ],
    );
  }
}
