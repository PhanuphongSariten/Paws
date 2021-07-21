import 'package:flutter/material.dart';

import 'package:paws/routs.dart';
import 'package:paws/screens/sign_in/sign_in_screen.dart';
import 'package:paws/screens/welcome/components/welcomecontent.dart';
import 'package:paws/screens/welcome/welcomescreen.dart';
import 'constants.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

void main() {
  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: '/home',
    defaultTransition: Transition.native,
    getPages: [
      //Simple GetPage
      GetPage(name: '/home', page: () => OnboardingScreen()),
      // GetPage with custom transitions and bindings
      GetPage(
        name: '/second',
        page: () => SignInScreen(),
        customTransition: SizeTransitions(),
      ),
      // GetPage with default transitions
      /*GetPage(
        name: '/third',
        transition: Transition.cupertino,
        page: () => Third(),
      ),*/
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
