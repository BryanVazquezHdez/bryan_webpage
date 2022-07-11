import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bryan_webpage/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
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
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
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
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text("I'm "),
          AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText(
        "Scrum Master 👨🏻",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "Product Owner 🗣",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "Project Manager 🙋🏻‍♂️",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "Developer 💻",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "an Entrepreneur🗻",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "a Leader 🏳",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "Innovative ✨",
        speed: Duration(milliseconds: 60),
      ),
    ]);
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
