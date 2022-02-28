import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg4.png",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.8),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to my \nPortfolio!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                BuildAnimatedText()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I'm "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              "Scrum Master",
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "Project Manager",
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "Developer",
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "an Entrepreneur",
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "a Leader",
              speed: Duration(milliseconds: 60),
            ),
            TyperAnimatedText(
              "Innovative",
              speed: Duration(milliseconds: 60),
            ),
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: "<", children: [
        TextSpan(
            text: "h3",
            style: TextStyle(color: Color.fromARGB(255, 36, 149, 255))),
        TextSpan(text: ">"),
      ]),
    );
  }
}
