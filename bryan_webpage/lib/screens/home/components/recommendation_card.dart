import 'package:bryan_webpage/models/Recommendation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondayColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          recommendation.name!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(recommendation.source!),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          recommendation.text!,
          maxLines: 6,
          overflow: TextOverflow.clip,
          style: TextStyle(height: 1.5),
        )
      ]),
    );
  }
}
