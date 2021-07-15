import 'package:flutter/material.dart';
import 'package:paws/screens/welcome/components/welcomecontent.dart';
import 'package:paws/size_config.dart';
import 'package:paws/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/kekw.jpg"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/hiragana.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/cat.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => WelcomeContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Container buildDot() {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: 6,
      decoration: BoxDecoration(
          color: kPriColor, borderRadius: BorderRadius.circular(3)),
    );
  }
}
