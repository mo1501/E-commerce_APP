

import 'package:ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// used named routes
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
