import 'package:ecommerce_app/screens/sign_in/components/sign_form.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/no_account_text.dart';
import '../../components/social_card.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.04,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(55),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Use your details or social media to sign in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: Icon(
                        Icons.facebook,
                        size: 50,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SocialCard(
                      icon: Icon(
                        Icons.facebook,
                        size: 50,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SocialCard(
                      icon: Icon(
                        Icons.facebook,
                        size: 50,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
