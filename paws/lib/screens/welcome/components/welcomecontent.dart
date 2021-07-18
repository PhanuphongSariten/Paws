import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Spacer(
          flex: 1,
        ),
        Text(
          "ニャン語",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPriColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(15), color: Colors.grey),
        ),
      ],
    );
  }
}
