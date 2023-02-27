import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';

import '../../../size_config.dart';
import '../../components/social_card.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
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
                SizedBox(height: SizeConfig.screenHeight! * 0.02), // 4%
                Text(
                  "Register Account",
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
                  "Complete your details or continue \nwith social media",
                  style: TextStyle(
                    color: Color(0XFF8B8B8B),
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.teal.shade900,
                        size: 48.0,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    SocialCard(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.teal.shade900,
                        size: 48.0,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    SocialCard(
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.teal.shade900,
                        size: 48.0,
                      ),
                      press: () {},
                    ),
                    SizedBox(
                      width: 36,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
