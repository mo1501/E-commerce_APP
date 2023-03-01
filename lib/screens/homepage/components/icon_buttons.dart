import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.icon,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            height: getProportionateScreenHeight(60),
            width: getProportionateScreenWidth(100),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Center(child: 
            Icon(icon),
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: -8,
              child: Container(
                height: getProportionateScreenHeight(30),
                width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
