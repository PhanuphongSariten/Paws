import 'package:flutter/material.dart';
import 'package:paws/routs.dart';
import 'package:paws/screens/welcome/welcomescreen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      //home: OnboardingScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    );
  }
}
