import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import '../../homepage/components/icon_buttons.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            width: getProportionateScreenWidth(140),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              size: 30,
              Icons.favorite_border_outlined,
              color: product.isFavourite ? Colors.black : Color(0xFFF5F6F9),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(12),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(30),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            style: TextStyle(fontSize: getProportionateScreenWidth(32)),
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(30),
            vertical: 20,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.teal.shade900),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.teal.shade900,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
