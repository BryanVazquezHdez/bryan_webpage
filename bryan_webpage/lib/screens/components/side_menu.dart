import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/screens/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'area_info_text.dart';
import 'coding.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Knowledge",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  KnowledgeText(text: "Agile methodologies"),
                  KnowledgeText(text: "GIT"),
                  KnowledgeText(text: "Basic UX/UI Design"),
                  KnowledgeText(text: "SQL"),
                ],
              ),
            ],
          ),
        ))
      ]),
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          SvgPicture.asset("icons/Check.svg"),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
