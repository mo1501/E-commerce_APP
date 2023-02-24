import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:ecommerce_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(), 
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
