import 'package:bryan_webpage/models/Experience_info.dart';
import 'package:bryan_webpage/screens/home/components/experience_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_experience.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: ExperienceCard(
                    experience: demo_experience[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
