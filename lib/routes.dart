

import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/homepage/homepage.dart';
import 'package:ecommerce_app/screens/product_detail_screen/product_details_screen.dart';
import 'package:ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/app_navigation/btmnavbar.dart';

// used named routes
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  HomePage.routeName:(context) => HomePage(),
  BtmNavigationBar.routeName:(context) => BtmNavigationBar(),
  DetailsScreen.routeName:(context) => DetailsScreen(),

};
