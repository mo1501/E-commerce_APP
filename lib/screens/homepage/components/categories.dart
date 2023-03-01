import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"image": "assets/images/deals.jpg", "text": "Deals"},
      {"image": "assets/images/gaming.jpg", "text": "Gaming"},
      {"image": "assets/images/clothing.jpg", "text": "Clothing"},
      {"image": "assets/images/household.jpg", "text": "Household"},
      {"image": "assets/images/foodanddining.jpg", "text": "Food"},
      {"image": "assets/images/product 1 image.png", "text": "Dining"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryCard(
                imageIcon: categories[index]["image"],
                text: categories[index]["text"],
                press: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.imageIcon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String imageIcon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(160),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(1)),
              height: getProportionateScreenHeight(120),
              width: getProportionateScreenWidth(170),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageIcon,
                  fit: BoxFit.cover,

                  // height: getProportionateScreenHeight(10),
                  // width: getProportionateScreenWidth(10),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
