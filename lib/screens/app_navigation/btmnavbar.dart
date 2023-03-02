import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/homepage/components/home_body.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../messages/messages.dart';
import '../user_profile/user_profile.dart';
import '../wishlist/wishlist.dart';

class BtmNavigationBar extends StatefulWidget {
  const BtmNavigationBar({super.key});
  static String routeName = "/btmnavbar";

  @override
  State<BtmNavigationBar> createState() => _BtmNavigationBarState();
}

class _BtmNavigationBarState extends State<BtmNavigationBar> {
  int pageIndex = 0;
  final pages = [
    HomeBody(),
    Wishlist(),
    Messages(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: getProportionateScreenHeight(70),
          width: getProportionateScreenWidth(90),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? const Icon(
                            Icons.home_filled,
                            color: Colors.black,
                            size: 35,
                          )
                        : const Icon(
                            Icons.home_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                  ),
                  if (pageIndex != 0)
                    Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                        ),
                      ),
                    ),
                  if (pageIndex == 0)
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          color: Colors.black,
                        ),
                        height: getProportionateScreenHeight(6),
                        width: getProportionateScreenWidth(90),
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.black,
                            size: 35,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                  ),
                  if (pageIndex != 1)
                    Center(
                      child: Text(
                        'Wishlist',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                        ),
                      ),
                    ),
                  if (pageIndex == 1)
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          color: Colors.black,
                        ),
                        height: getProportionateScreenHeight(6),
                        width: getProportionateScreenWidth(90),
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? const Icon(
                            Icons.messenger_outlined,
                            color: Colors.black,
                            size: 35,
                          )
                        : const Icon(
                            Icons.messenger_outline,
                            color: Colors.black,
                            size: 33,
                          ),
                  ),
                  if (pageIndex != 2)
                    Center(
                      child: Text(
                        'Messages',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                        ),
                      ),
                    ),
                  if (pageIndex == 2)
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          color: Colors.black,
                        ),
                        height: getProportionateScreenHeight(6),
                        width: getProportionateScreenWidth(90),
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? const Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 35,
                          )
                        : const Icon(
                            Icons.person_outline_outlined,
                            color: Colors.black,
                            size: 33,
                          ),
                  ),
                  if (pageIndex != 3)
                    Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                        ),
                      ),
                    ),
                  if (pageIndex == 3)
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          color: Colors.black,
                        ),
                        height: getProportionateScreenHeight(6),
                        width: getProportionateScreenWidth(90),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
