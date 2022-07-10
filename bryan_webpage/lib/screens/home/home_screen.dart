import 'package:bryan_webpage/screens/home/components/experience.dart';
import 'package:bryan_webpage/screens/home/my_projects.dart';
import 'package:bryan_webpage/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'components/highlights.dart';
import 'components/home_banner.dart';
import 'components/recommendation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
        Experience()
      ],
    );
  }
}
