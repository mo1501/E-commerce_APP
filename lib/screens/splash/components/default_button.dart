import 'package:flutter/material.dart';

import '../../../size_config.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: ElevatedButton(
        onPressed: (){},
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
