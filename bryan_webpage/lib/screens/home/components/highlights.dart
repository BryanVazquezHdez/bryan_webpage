import 'package:flutter/material.dart';
import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HieghLight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
          HieghLight(
            counter: AnimatedCounter(
              value: 150,
              text: "+",
            ),
            label: "LinkedIn Contacts",
          ),
          HieghLight(
            counter: AnimatedCounter(
              value: 20,
              text: "+",
            ),
            label: "Aptitudes",
          ),
          HieghLight(
            counter: AnimatedCounter(
              value: 5,
              text: "",
            ),
            label: "Certifications",
          ),
        ],
      ),
    );
  }
}
