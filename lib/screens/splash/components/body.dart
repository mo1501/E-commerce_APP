import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app/screens/components/default_button.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/splash/components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": 'Welcome to the ultimate shopping experience',
      "image": 'assets/images/splash_1.png',
    },
    {
      "text": 'We are available all over the world',
      "image": 'assets/images/splash_2.png',
    },
    {
      "text": 'We make everything easy for you',
      "image": 'assets/images/splash_3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: ((context, index) => SplashContent(
                      image: splashData[index]["image"]!,
                      text: splashData[index]["text"]!,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index: index)),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  DefaultButton(
                    press: () {
                      Navigator.popAndPushNamed(
                          context, SignInScreen.routeName);
                    },
                    text: 'Continue',
                  ),
                  Spacer(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? Colors.green.shade900 : Colors.grey.shade600,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
