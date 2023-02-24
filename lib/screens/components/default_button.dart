import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../sign_in/sign_in_screen.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.teal.shade900,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, SignInScreen.routeName);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
