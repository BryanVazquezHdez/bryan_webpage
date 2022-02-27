import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/screens/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        MyInfo(),
        Expanded(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              AreaInfoText(
                title: "Residence",
                text: "Mexico",
              ),
              AreaInfoText(
                title: "Ciudad",
                text: "Culiacán",
              ),
              AreaInfoText(
                title: "Age",
                text: "24",
              ),
              Skills(),
              SizedBox(
                height: defaultPadding,
              ),
              Coding(),
              Knowledges(),
            ],
          ),
        ))
      ]),
    );
  }
}
