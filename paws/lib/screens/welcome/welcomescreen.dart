import 'package:flutter/material.dart';
import 'package:paws/screens/welcome/components/Body.dart';
import 'package:paws/size_config.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
