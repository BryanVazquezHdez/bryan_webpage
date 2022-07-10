import 'package:bryan_webpage/constants.dart';
import 'package:bryan_webpage/screens/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
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
      child: SafeArea(
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
                  title: "City",
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
                Container(
                    child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        "Download CV",
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.headline6!.color),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      IconButtonSet(
                        icono: "icons/Download.svg",
                        url:
                            "https://drive.google.com/file/d/1U4ZC9wOwXHNimyEi8tMVX-M4SKpCNylq/view?usp=sharing",
                      ),
                    ],
                  ),
                )),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding),
                  color: Color(0xFF24242E),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButtonSet(
                        icono: "icons/github.svg",
                        url: "https://github.com/BryanVazquezHdez",
                      ),
                      IconButtonSet(
                        icono: "icons/linkedin.svg",
                        url: "https://www.linkedin.com/in/bryanvazquezh/",
                      ),
                      IconButtonSet(
                          icono: "icons/twitter.svg",
                          url: "https://twitter.com/bryanv_h"),
                      IconButtonSet(
                        icono: "icons/youtube.svg",
                        url: "https://www.youtube.com/c/Emprendamos/",
                      ),
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
      ),
    );
  }
}

class IconButtonSet extends StatelessWidget {
  const IconButtonSet({
    Key? key,
    required this.icono,
    required this.url,
  }) : super(key: key);

  final String icono;
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: SvgPicture.asset(icono),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        });
  }
}
