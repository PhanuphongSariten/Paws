import 'package:flutter/material.dart';

import 'package:paws/screens/home/learning_screen.dart';
import 'package:paws/screens/home/test/test_screen.dart';
import 'package:paws/screens/login/login_screen.dart';
import 'package:paws/screens/pet/pet_screen.dart';
import 'package:paws/screens/profile/profile_screen.dart';
import 'package:paws/screens/sign_in/sign_in_screen.dart';
import 'package:paws/screens/welcome/onboarding_screen.dart';

import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.native,
    getPages: [
      GetPage(
          name: '/sign_in_screen',
          page: () => SignInScreen(),
          customTransition: SizeTransitions()),
      GetPage(name: '/login_screen', page: () => LoginScreen()),
      GetPage(name: '/onboarding_screen', page: () => OnboardingScreen()),
      GetPage(name: '/learning_screen', page: () => LearningScreen()),
      GetPage(name: '/pet_screen', page: () => PetScreen()),
      GetPage(name: '/profile_screen', page: () => ProfileScreen()),
      GetPage(name: '/test_screen', page: () => TestScreen()),
    ],
  ));
}

class SizeTransitions extends CustomTransition {
  @override
  Widget buildTransition(
      BuildContext context,
      Curve curve,
      Alignment alignment,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return Align(
      alignment: Alignment.center,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
        child: child,
      ),
    );
  }
}
