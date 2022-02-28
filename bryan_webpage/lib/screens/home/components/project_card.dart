import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondayColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          project.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Spacer(),
        Text(
          project.description!,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(height: 1.5),
        ),
        Spacer(),
        InkWell(
          child: Text(
            "Read More!",
            style: TextStyle(color: primaryColor),
          ),
          onTap: () => launch(project.url!),
        )
      ]),
    );
  }
}