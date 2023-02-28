import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({super.key, required this.errors});

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row formErrorText({String? error}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.error_outline,
          size: 20,
          color: Colors.red.shade900,
        ),
        SizedBox(
          width: getProportionateScreenWidth(30),
          height: getProportionateScreenHeight(24),
        ),
        Text(
          error!,
          style: TextStyle(
            color: Colors.red.shade900,
            fontSize: getProportionateScreenWidth(32),
          ),
        ),
      ],
    );
  }
}
