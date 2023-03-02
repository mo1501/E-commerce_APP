import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../homepage/components/icon_buttons.dart';

class CustomAppBar {
  CustomAppBar();

 
  // AppBar().preferredSize.height provide us the height that appy on our app bar

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Colors.teal.shade900,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  )),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  IconBtnWithCounter(
                    icon: Icons.shopping_cart_outlined,
                    press: () {},
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
