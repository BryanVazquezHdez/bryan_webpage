import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        TopSkillsText(text: "Problem Solving Skills"),
        TopSkillsText(text: "Critical Thinking Skills"),
        TopSkillsText(text: "Flexibility"),
        TopSkillsText(text: "Teamwork"),
        TopSkillsText(text: "Communication Skills"),
        TopSkillsText(text: "Responsability"),
      ],
    );
  }
}

class TopSkillsText extends StatelessWidget {
  const TopSkillsText({
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
