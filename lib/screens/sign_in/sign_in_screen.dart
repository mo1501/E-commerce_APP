import 'package:ecommerce_app/screens/splash/components/body.dart';
import 'package:flutter/material.dart';
import 'components/sign_in_body.dart';
import 'package:ecommerce_app/theme.dart';
import 'package:firebase_core/firebase_core.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = "/sign_in";

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Login'),
        
      ),
      body: SignInBody(),
    );
  }
}
