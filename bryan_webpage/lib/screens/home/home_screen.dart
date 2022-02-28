import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [HomeBanner()],
    );
  }
}
