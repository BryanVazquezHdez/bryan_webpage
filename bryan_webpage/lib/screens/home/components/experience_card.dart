import 'package:bryan_webpage/models/Experience_info.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final ExperienceInfo experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondayColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          experience.company!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          experience.position!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(experience.date!),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          experience.label!,
          maxLines: 6,
          overflow: TextOverflow.clip,
          style: TextStyle(height: 1.5),
        )
      ]),
    );
  }
}
