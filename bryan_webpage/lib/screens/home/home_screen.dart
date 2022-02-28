import 'dart:html';

import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/models/Project.dart';
import 'package:bryan_webpage/screens/home/my_projects.dart';
import 'package:bryan_webpage/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/highlights.dart';
import 'components/home_banner.dart';
import 'components/project_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
      ],
    );
  }
}
