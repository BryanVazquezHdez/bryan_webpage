import 'dart:io';
import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/screens/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
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
              Divider(),
              SizedBox(
                height: defaultPadding / 2,
              ),
/*               TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        SvgPicture.asset("icons/Download.svg"),
                      ],
                    ),
                  )), */
              Link(
                  uri: Uri.parse(
                      "https://drive.google.com/file/d/1U4ZC9wOwXHNimyEi8tMVX-M4SKpCNylq/view?usp=sharing"),
                  target: LinkTarget.blank,
                  builder: (context, followLink) {
                    return TextButton(
                        onPressed: followLink,
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "Download CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              SizedBox(
                                width: defaultPadding,
                              ),
                              SvgPicture.asset("icons/Download.svg"),
                            ],
                          ),
                        ));
                  }),
              Container(
                margin: EdgeInsets.only(top: defaultPadding),
                color: Color(0xFF24242E),
                child: Row(
                  children: [
                    Spacer(),
                    Link(
                        uri: Uri.parse("https://github.com/BryanVazquezHdez"),
                        target: LinkTarget.blank,
                        builder: (context, followLink) {
                          return IconButton(
                              onPressed: (followLink),
                              icon: SvgPicture.asset("icons/github.svg"));
                        }),
                    Link(
                        uri: Uri.parse(
                            "https://www.linkedin.com/in/bryanvazquezh/"),
                        target: LinkTarget.blank,
                        builder: (context, followLink) {
                          return IconButton(
                              onPressed: (followLink),
                              icon: SvgPicture.asset("icons/linkedin.svg"));
                        }),
                    Link(
                        uri: Uri.parse("https://twitter.com/bryanv_h"),
                        target: LinkTarget.blank,
                        builder: (context, followLink) {
                          return IconButton(
                              onPressed: (followLink),
                              icon: SvgPicture.asset("icons/twitter.svg"));
                        }),
                    Link(
                        uri: Uri.parse("https://www.youtube.com/c/Emprendamos"),
                        target: LinkTarget.blank,
                        builder: (context, followLink) {
                          return IconButton(
                              onPressed: (followLink),
                              icon: SvgPicture.asset("icons/youtube.svg"));
                        }),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: Text(
                  "This site has been created with Flutter",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              )
            ],
          ),
        ))
      ]),
    );
  }
}
