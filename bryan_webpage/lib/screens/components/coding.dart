import 'package:flutter/material.dart';

import '../../components/animated_progress_indicator.dart';
import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Management tools & Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Azure Devops",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Jira",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "Monday.com",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          label: "Swift",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.1,
          label: "Dart",
        ),
      ],
    );
  }
}
