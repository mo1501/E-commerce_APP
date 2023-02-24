import 'package:flutter/material.dart';
//import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(38),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(40),
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900),
          ),
        ),
      ],
    );
  }
}
